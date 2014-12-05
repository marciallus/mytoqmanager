// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.about;

import java.util.*;
import org.alljoyn.about.client.AboutClient;
import org.alljoyn.about.client.AboutClientImpl;
import org.alljoyn.about.icon.AboutIconClient;
import org.alljoyn.about.icon.AboutIconClientImpl;
import org.alljoyn.about.transport.AboutTransport;
import org.alljoyn.about.transport.IconTransport;
import org.alljoyn.bus.*;
import org.alljoyn.services.common.*;
import org.alljoyn.services.common.utils.GenericLogger;
import org.alljoyn.services.common.utils.TransportUtil;

// Referenced classes of package org.alljoyn.about:
//            AboutService, AboutServiceException, Announcer

public class AboutServiceImpl extends ServiceCommonImpl
    implements AboutService
{
    private class AboutInterface
        implements AboutTransport, BusObject
    {

        final AboutServiceImpl this$0;

        public void Announce(short word0, short word1, BusObjectDescription abusobjectdescription[], Map map)
        {
        }

        public Map GetAboutData(String s)
            throws BusException
        {
            HashMap hashmap = new HashMap();
            try
            {
                m_propertyStore.readAll(s, org.alljoyn.services.common.PropertyStore.Filter.READ, hashmap);
            }
            catch (PropertyStoreException propertystoreexception)
            {
                if (propertystoreexception.getReason() == 1)
                    throw new LanguageNotSupportedException();
                propertystoreexception.printStackTrace();
            }
            return TransportUtil.toVariantMap(hashmap);
        }

        public BusObjectDescription[] GetObjectDescription()
            throws BusException
        {
            return (BusObjectDescription[])m_ObjectDescriptions.toArray(new BusObjectDescription[0]);
        }

        public short getVersion()
            throws BusException
        {
            return 1;
        }

        private AboutInterface()
        {
            this$0 = AboutServiceImpl.this;
            super();
        }

    }

    private class AnnouncmentReceiver
        implements AboutTransport
    {

        final AboutServiceImpl this$0;

        public void Announce(short word0, short word1, BusObjectDescription abusobjectdescription[], Map map)
        {
            BusAttachment busattachment = getBus();
            busattachment.enableConcurrentCallbacks();
            String s = busattachment.getMessageContext().sender;
            for (int i = 0; i < m_announcementHandlers.size(); i++)
                ((AnnouncementHandler)m_announcementHandlers.elementAt(i)).onAnnouncement(s, word1, abusobjectdescription, map);

        }

        public Map GetAboutData(String s)
            throws BusException
        {
            return null;
        }

        public BusObjectDescription[] GetObjectDescription()
            throws BusException
        {
            return null;
        }

        public short getVersion()
            throws BusException
        {
            return 0;
        }

        private AnnouncmentReceiver()
        {
            this$0 = AboutServiceImpl.this;
            super();
        }

    }

    private class IconInterface
        implements IconTransport, BusObject
    {

        final AboutServiceImpl this$0;

        public byte[] GetContent()
            throws BusException
        {
            return m_iconContent;
        }

        public String GetUrl()
            throws BusException
        {
            return m_iconUrl;
        }

        public String getMimeType()
            throws BusException
        {
            return m_iconMimeType;
        }

        public int getSize()
            throws BusException
        {
            if (m_iconContent != null)
                return m_iconContent.length;
            else
                return 0;
        }

        public short getVersion()
            throws BusException
        {
            return 1;
        }

        private IconInterface()
        {
            this$0 = AboutServiceImpl.this;
            super();
        }

    }


    private static final String ANNOUNCE_MATCH_RULE = "interface='org.alljoyn.About'";
    private static AboutServiceImpl m_instance = new AboutServiceImpl();
    private Set m_ObjectDescriptions;
    private AboutTransport m_aboutInterface;
    private AboutTransport m_announcementEmitter;
    private Vector m_announcementHandlers;
    private Announcer m_announcer;
    private AnnouncmentReceiver m_announcmentReceiver;
    private BusListener m_busListeners;
    private byte m_iconContent[];
    private IconTransport m_iconInterface;
    private String m_iconMimeType;
    private String m_iconUrl;
    private PropertyStore m_propertyStore;
    private short m_servicesPort;

    private AboutServiceImpl()
    {
        m_ObjectDescriptions = new HashSet();
        TAG = (new StringBuilder()).append("ioe").append(org/alljoyn/about/AboutServiceImpl.getSimpleName()).toString();
        m_announcementHandlers = new Vector();
    }

    private void createAnnouncer()
        throws Exception
    {
        if (m_announcer == null)
        {
            if (!isServerRunning())
                throw new AboutServiceException("The AboutServer hasn't been started, can't continue working");
            m_announcer = new Announcer() {

                private boolean m_isAnnouncing;
                final AboutServiceImpl this$0;

                public void addBusObjectAnnouncements(List list)
                {
                    m_ObjectDescriptions.addAll(list);
                }

                public void announce()
                {
                    if (m_announcementEmitter != null && isAnnouncing())
                    {
                        BusObjectDescription abusobjectdescription[] = (BusObjectDescription[])m_ObjectDescriptions.toArray(new BusObjectDescription[0]);
                        HashMap hashmap = new HashMap();
                        Map map;
                        try
                        {
                            m_propertyStore.readAll("", org.alljoyn.services.common.PropertyStore.Filter.ANNOUNCE, hashmap);
                        }
                        catch (PropertyStoreException propertystoreexception)
                        {
                            throw new AboutServiceException((new StringBuilder()).append("Failed to read announcable properties from the PropertyStore, Error: '").append(propertystoreexception.getMessage()).append("'").toString());
                        }
                        map = TransportUtil.toVariantMap(hashmap);
                        m_announcementEmitter.Announce((short)1, m_servicesPort, abusobjectdescription, map);
                    }
                }

                public boolean isAnnouncing()
                {
                    return m_isAnnouncing;
                }

                public void removeBusObjectAnnouncements(List list)
                {
                    Iterator iterator = list.iterator();
label0:
                    do
                    {
                        BusObjectDescription busobjectdescription1;
label1:
                        {
                            if (!iterator.hasNext())
                                break label0;
                            BusObjectDescription busobjectdescription = (BusObjectDescription)iterator.next();
                            for (Iterator iterator1 = m_ObjectDescriptions.iterator(); iterator1.hasNext();)
                            {
                                busobjectdescription1 = (BusObjectDescription)iterator1.next();
                                if (busobjectdescription.getPath().equalsIgnoreCase(busobjectdescription1.getPath()))
                                {
                                    if (busobjectdescription.getInterfaces().length == 0 || Arrays.equals(busobjectdescription.getInterfaces(), busobjectdescription1.getInterfaces()))
                                        break label1;
                                    ArrayList arraylist = new ArrayList(Arrays.asList(busobjectdescription1.interfaces));
                                    arraylist.removeAll(Arrays.asList(busobjectdescription.getInterfaces()));
                                    busobjectdescription1.setInterfaces((String[])arraylist.toArray(new String[0]));
                                }
                            }

                            busobjectdescription1 = null;
                        }
                        if (busobjectdescription1 != null)
                            m_ObjectDescriptions.remove(busobjectdescription1);
                    } while (true);
                }

                public void setAnnouncing(boolean flag)
                {
                    m_isAnnouncing = flag;
                }

            
            {
                this$0 = AboutServiceImpl.this;
                super();
                m_isAnnouncing = true;
            }
            }
;
            SignalEmitter signalemitter = new SignalEmitter(m_aboutInterface, org.alljoyn.bus.SignalEmitter.GlobalBroadcast.Off);
            signalemitter.setSessionlessFlag(true);
            signalemitter.setTimeToLive(0);
            m_announcementEmitter = (AboutTransport)signalemitter.getInterface(org/alljoyn/about/transport/AboutTransport);
        }
    }

    public static AboutService getInstance()
    {
        return m_instance;
    }

    private void registerAboutIconInterface()
        throws Exception
    {
        m_iconInterface = new IconInterface();
        Status status = getBus().registerBusObject(m_iconInterface, "/About/DeviceIcon");
        getLogger().debug(TAG, String.format("BusAttachment.registerBusObject(m_IconInterface): %s", new Object[] {
            status
        }));
        if (status == Status.OK);
    }

    private void registerAboutInterface()
        throws Exception
    {
        m_aboutInterface = new AboutInterface();
        Status status = getBus().registerBusObject(m_aboutInterface, "/About");
        getLogger().debug(TAG, String.format("BusAttachment.registerBusObject(m_aboutConfigInterface): %s", new Object[] {
            status
        }));
        if (status != Status.OK)
            throw new AboutServiceException((new StringBuilder()).append("Failed to register the AboutInterface on the bus, Status: '").append(status).append("'").toString());
        else
            return;
    }

    private void registerAnnouncementReceiver()
    {
        BusAttachment busattachment = getBus();
        m_announcmentReceiver = new AnnouncmentReceiver();
        Status status = busattachment.registerBusObject(m_announcmentReceiver, "/About");
        getLogger().info(TAG, (new StringBuilder()).append("BusAttachment.registerBusObject(AnnouncmentReceiver) status = '").append(status).append("', ObjPath: '").append("/About").append("'").toString());
        if (status != Status.OK)
            throw new AboutServiceException((new StringBuilder()).append("Register BusObject of Announcement receiver has failed, Status: '").append(status).append("'").toString());
        Status status1 = busattachment.registerSignalHandlers(m_announcmentReceiver);
        getLogger().info(TAG, (new StringBuilder()).append("BusAttachment.registerSignalHandlers(AnnouncmentReceiver) status = '").append(status1).append("'").toString());
        if (status1 != Status.OK)
            throw new AboutServiceException((new StringBuilder()).append("Register Announcement signal handler has failed, Status: '").append(status1).append("'").toString());
        Status status2 = busattachment.addMatch("interface='org.alljoyn.About'");
        getLogger().info(TAG, (new StringBuilder()).append("BusAttachment.addMatch() status = ").append(status2).toString());
        if (status2 != Status.OK)
            throw new AboutServiceException((new StringBuilder()).append("Failed to call AddMatch for the rule: 'interface='org.alljoyn.About'', Status: '").append(status2).append("'").toString());
        else
            return;
    }

    private void registerDeviceListener()
    {
        m_busListeners = new BusListener() {

            final AboutServiceImpl this$0;

            public void foundAdvertisedName(String s, short word0, String s1)
            {
                getLogger().debug(lostAdvertisedName_28__25_s_2C__20_0x_25_04x_2C__20__25_s_29__22_, (new StringBuilder()).append("MyBusListener.foundAdvertisedName: '").append(s).append("'").toString());
            }

            public void lostAdvertisedName(String s, short word0, String s1)
            {
                getBus().enableConcurrentCallbacks();
                GenericLogger genericlogger = getLogger();
                String s2 = lostAdvertisedName_28__25_s_2C__20_0x_25_04x_2C__20__25_s_29__22_;
                Object aobj[] = new Object[3];
                aobj[0] = s;
                aobj[1] = Short.valueOf(word0);
                aobj[2] = s1;
                genericlogger.debug(s2, String.format("MyBusListener.lostAdvertisedName(%s, 0x%04x, %s)", aobj));
                for (int i = 0; i < m_announcementHandlers.size(); i++)
                    ((AnnouncementHandler)m_announcementHandlers.elementAt(i)).onDeviceLost(s);

            }

            public void nameOwnerChanged(String s, String s1, String s2)
            {
                getLogger().debug(lostAdvertisedName_28__25_s_2C__20_0x_25_04x_2C__20__25_s_29__22_, String.format("MyBusListener.nameOwnerChanged(%s, %s, %s)", new Object[] {
                    s, s1, s2
                }));
            }

            
            {
                this$0 = AboutServiceImpl.this;
                super();
            }
        }
;
        getBus().registerBusListener(m_busListeners);
        Status status = getBus().findAdvertisedName(":");
        if (status != Status.OK)
        {
            getLogger().error(TAG, (new StringBuilder()).append("Failed to call findAdvertisedName, Status: '").append(status).append("'").toString());
            throw new AboutServiceException((new StringBuilder()).append("Failed to call findAdvertisedName, Status: '").append(status).append("'").toString());
        } else
        {
            return;
        }
    }

    public void addAnnouncementHandler(AnnouncementHandler announcementhandler)
    {
        if (announcementhandler == null)
        {
            throw new IllegalArgumentException("The AnnouncementHandler can't be null");
        } else
        {
            m_announcementHandlers.add(announcementhandler);
            return;
        }
    }

    public void addObjectDescription(String s, String as[])
    {
        if (s == null)
            throw new IllegalArgumentException("ObjectPath can't be NULL");
        if (as == null)
            throw new IllegalArgumentException("The interfaces array can't be NULL");
        ArrayList arraylist = new ArrayList(2);
        BusObjectDescription busobjectdescription = new BusObjectDescription();
        busobjectdescription.setPath(s);
        busobjectdescription.setInterfaces(as);
        arraylist.add(busobjectdescription);
        Announcer announcer = getAnnouncer();
        if (announcer == null)
        {
            throw new AboutServiceException("AboutServer has not been initialized, no announcer");
        } else
        {
            announcer.addBusObjectAnnouncements(arraylist);
            return;
        }
    }

    public void addObjectDescriptions(List list)
    {
        Announcer announcer = getAnnouncer();
        if (announcer == null)
            throw new AboutServiceException("AboutServer has not been initialized, no announcer");
        if (list == null)
        {
            throw new IllegalArgumentException("addBusObjectDescriptions can't be NULL");
        } else
        {
            announcer.addBusObjectAnnouncements(list);
            return;
        }
    }

    public void announce()
    {
        Announcer announcer = getAnnouncer();
        if (announcer == null)
        {
            throw new AboutServiceException("AboutServer has not been initialized, no announcer");
        } else
        {
            announcer.announce();
            return;
        }
    }

    public AboutClient createAboutClient(String s, ServiceAvailabilityListener serviceavailabilitylistener, short word0)
        throws Exception
    {
        return new AboutClientImpl(s, getBus(), serviceavailabilitylistener, word0);
    }

    public AboutIconClient createAboutIconClient(String s, ServiceAvailabilityListener serviceavailabilitylistener, short word0)
        throws BusException
    {
        return new AboutIconClientImpl(s, getBus(), serviceavailabilitylistener, word0);
    }

    public Announcer getAnnouncer()
    {
        try
        {
            createAnnouncer();
        }
        catch (Exception exception)
        {
            getLogger().error(TAG, (new StringBuilder()).append("Fail to create Announcer, Error: '").append(exception.getMessage()).append("'").toString());
            exception.printStackTrace();
            return null;
        }
        return m_announcer;
    }

    public List getBusObjectDescriptions()
    {
        ArrayList arraylist = new ArrayList(2);
        BusObjectDescription busobjectdescription = new BusObjectDescription();
        busobjectdescription.setPath("/About");
        busobjectdescription.setInterfaces(new String[] {
            "org.alljoyn.About"
        });
        arraylist.add(busobjectdescription);
        return arraylist;
    }

    public void registerIcon(String s, String s1, byte abyte0[])
        throws Exception
    {
        super.startServer();
        m_iconMimeType = s;
        m_iconUrl = s1;
        m_iconContent = abyte0;
        registerAboutIconInterface();
        addObjectDescription("/About/DeviceIcon", new String[] {
            "org.alljoyn.Icon"
        });
    }

    public void removeAnnouncementHandler(AnnouncementHandler announcementhandler)
    {
        if (announcementhandler == null)
        {
            throw new IllegalArgumentException("The AnnouncementHandler can't be null");
        } else
        {
            m_announcementHandlers.remove(announcementhandler);
            return;
        }
    }

    public void removeObjectDescription(String s, String as[])
    {
        ArrayList arraylist = new ArrayList(2);
        BusObjectDescription busobjectdescription = new BusObjectDescription();
        busobjectdescription.setPath(s);
        busobjectdescription.setInterfaces(as);
        arraylist.add(busobjectdescription);
        Announcer announcer = getAnnouncer();
        if (announcer == null)
        {
            throw new AboutServiceException("AboutServer has not been initialized, no announcer");
        } else
        {
            announcer.removeBusObjectAnnouncements(arraylist);
            return;
        }
    }

    public void removeObjectDescriptions(List list)
    {
        Announcer announcer = getAnnouncer();
        if (announcer == null)
        {
            throw new AboutServiceException("AboutServer has not been initialized, no announcer");
        } else
        {
            announcer.removeBusObjectAnnouncements(list);
            return;
        }
    }

    public void startAboutClient(BusAttachment busattachment)
        throws Exception
    {
        super.startClient();
        setBus(busattachment);
        registerDeviceListener();
        registerAnnouncementReceiver();
    }

    public void startAboutServer(short word0, PropertyStore propertystore, BusAttachment busattachment)
        throws Exception
    {
        super.startServer();
        if (propertystore != null)
        {
            m_propertyStore = propertystore;
            m_servicesPort = word0;
            setBus(busattachment);
            registerAboutInterface();
            addObjectDescription("/About", new String[] {
                "org.alljoyn.About"
            });
            return;
        } else
        {
            throw new IllegalArgumentException("PropertyStore can't be NULL");
        }
    }

    public void stopAboutClient()
        throws Exception
    {
        BusAttachment busattachment = getBus();
        if (busattachment != null)
        {
            if (m_announcmentReceiver != null)
            {
                busattachment.unregisterSignalHandlers(m_announcmentReceiver);
                busattachment.unregisterBusObject(m_announcmentReceiver);
            }
            if (m_busListeners != null)
                busattachment.unregisterBusListener(m_busListeners);
            m_announcementHandlers.removeAllElements();
            m_announcmentReceiver = null;
            m_busListeners = null;
        }
        super.stopClient();
    }

    public void stopAboutServer()
        throws Exception
    {
        if (getBus() != null)
        {
            if (m_aboutInterface != null)
                getBus().unregisterBusObject(m_aboutInterface);
            m_ObjectDescriptions.clear();
            m_announcementEmitter = null;
            m_announcer = null;
        }
        super.stopServer();
    }

    public void unregisterIcon()
        throws Exception
    {
        if (getBus() != null)
        {
            if (m_iconInterface != null)
                getBus().unregisterBusObject(m_iconInterface);
            removeObjectDescription("/About/DeviceIcon", new String[] {
                "org.alljoyn.Icon"
            });
        }
    }














}
