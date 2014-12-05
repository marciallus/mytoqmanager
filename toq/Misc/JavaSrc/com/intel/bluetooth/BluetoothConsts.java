// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package com.intel.bluetooth;

import java.util.Hashtable;
import javax.bluetooth.DeviceClass;
import javax.bluetooth.UUID;

public abstract class BluetoothConsts
{
    public static class DeviceClassConsts
    {

        public static final int AUDIO_MINOR_CAMCORDER = 52;
        public static final int AUDIO_MINOR_CAR_AUDIO = 32;
        public static final int AUDIO_MINOR_GAMING_TOY = 72;
        public static final int AUDIO_MINOR_HANDS_FREE = 8;
        public static final int AUDIO_MINOR_HEADPHONES = 24;
        public static final int AUDIO_MINOR_HEADSET = 4;
        public static final int AUDIO_MINOR_HIFI_AUDIO = 40;
        public static final int AUDIO_MINOR_LOUDSPEAKER = 20;
        public static final int AUDIO_MINOR_MICROPHONE = 16;
        public static final int AUDIO_MINOR_PORTABLE_AUDIO = 28;
        public static final int AUDIO_MINOR_SET_TOP_BOX = 36;
        public static final int AUDIO_MINOR_UNCLASSIFIED = 0;
        public static final int AUDIO_MINOR_VCR = 44;
        public static final int AUDIO_MINOR_VIDEO_CAMERA = 48;
        public static final int AUDIO_MINOR_VIDEO_DISPLAY_CONFERENCING = 64;
        public static final int AUDIO_MINOR_VIDEO_DISPLAY_LOUDSPEAKER = 60;
        public static final int AUDIO_MINOR_VIDEO_MONITOR = 56;
        public static final int AUDIO_SERVICE = 0x200000;
        public static final int CAPTURING_SERVICE = 0x80000;
        public static final int COMPUTER_MINOR_DESKTOP = 4;
        public static final int COMPUTER_MINOR_HANDHELD = 16;
        public static final int COMPUTER_MINOR_LAPTOP = 12;
        public static final int COMPUTER_MINOR_PALM = 20;
        public static final int COMPUTER_MINOR_SERVER = 8;
        public static final int COMPUTER_MINOR_UNCLASSIFIED = 0;
        public static final int COMPUTER_MINOR_WEARABLE = 24;
        public static final int FORMAT_VERSION_MASK = 3;
        public static final int IMAGING_MINOR_CAMERA_MASK = 32;
        public static final int IMAGING_MINOR_DISPLAY_MASK = 16;
        public static final int IMAGING_MINOR_PRINTER_MASK = 128;
        public static final int IMAGING_MINOR_SCANNER_MASK = 64;
        public static final int INFORMATION_SERVICE = 0x800000;
        public static final int LAN_MINOR_ACCESS_0_USED = 0;
        public static final int LAN_MINOR_ACCESS_17_USED = 32;
        public static final int LAN_MINOR_ACCESS_33_USED = 64;
        public static final int LAN_MINOR_ACCESS_50_USED = 96;
        public static final int LAN_MINOR_ACCESS_67_USED = 128;
        public static final int LAN_MINOR_ACCESS_83_USED = 160;
        public static final int LAN_MINOR_ACCESS_99_USED = 192;
        public static final int LAN_MINOR_ACCESS_FULL = 224;
        public static final int LAN_MINOR_ACCESS_MASK = 224;
        public static final int LAN_MINOR_TYPE_MASK = 28;
        public static final int LAN_MINOR_UNCLASSIFIED = 0;
        public static final int LIMITED_DISCOVERY_SERVICE = 8192;
        public static final int MAJOR_AUDIO = 1024;
        public static final int MAJOR_COMPUTER = 256;
        public static final int MAJOR_IMAGING = 1536;
        public static final int MAJOR_LAN_ACCESS = 768;
        public static final int MAJOR_MASK = 7936;
        public static final int MAJOR_MISCELLANEOUS = 0;
        public static final int MAJOR_PERIPHERAL = 1280;
        public static final int MAJOR_PHONE = 512;
        public static final int MAJOR_UNCLASSIFIED = 7936;
        public static final int MINOR_MASK = 252;
        public static final int NETWORKING_SERVICE = 0x20000;
        public static final int OBJECT_TRANSFER_SERVICE = 0x100000;
        public static final int PERIPHERAL_MINOR_CARD_READER = 24;
        public static final int PERIPHERAL_MINOR_DIGITIZER = 20;
        public static final int PERIPHERAL_MINOR_GAMEPAD = 8;
        public static final int PERIPHERAL_MINOR_JOYSTICK = 4;
        public static final int PERIPHERAL_MINOR_KEYBOARD_MASK = 64;
        public static final int PERIPHERAL_MINOR_POINTER_MASK = 128;
        public static final int PERIPHERAL_MINOR_REMOTE_CONTROL = 12;
        public static final int PERIPHERAL_MINOR_SENSING = 16;
        public static final int PERIPHERAL_MINOR_TYPE_MASK = 60;
        public static final int PERIPHERAL_MINOR_UNCLASSIFIED = 0;
        public static final int PHONE_MINOR_BANANA = 24;
        public static final int PHONE_MINOR_CELLULAR = 4;
        public static final int PHONE_MINOR_CORDLESS = 8;
        public static final int PHONE_MINOR_ISDN = 20;
        public static final int PHONE_MINOR_SMARTPHONE = 12;
        public static final int PHONE_MINOR_UNCLASSIFIED = 0;
        public static final int PHONE_MINOR_WIRED_MODEM = 16;
        public static final int POSITIONING_SERVICE = 0x10000;
        public static final int RENDERING_SERVICE = 0x40000;
        public static final int RESERVED1_SERVICE = 16384;
        public static final int RESERVED2_SERVICE = 32768;
        public static final int SERVICE_MASK = 0xffe000;
        public static final int TELEPHONY_SERVICE = 0x400000;

        private static boolean append(StringBuffer stringbuffer, String s, boolean flag)
        {
            if (flag)
                stringbuffer.append(',');
            stringbuffer.append(s);
            return true;
        }

        public static String toString(DeviceClass deviceclass)
        {
            StringBuffer stringbuffer = new StringBuffer();
            switch (deviceclass.getMajorDeviceClass())
            {
            case 7936: 
                stringbuffer.append("Unclassified");
                break;

            case 1536: 
                stringbuffer.append("Peripheral/(");
                int i1 = deviceclass.getMinorDeviceClass();
                int j1 = i1 & 0x10;
                boolean flag1 = false;
                if (j1 != 0)
                    flag1 = append(stringbuffer, "Display", false);
                if ((i1 & 0x20) != 0)
                    flag1 = append(stringbuffer, "Camera", flag1);
                if ((i1 & 0x40) != 0)
                    flag1 = append(stringbuffer, "Scanner", flag1);
                if ((i1 & 0x80) != 0)
                    append(stringbuffer, "Printer", flag1);
                stringbuffer.append(')');
                break;

            case 1280: 
                stringbuffer.append("Peripheral");
                int l = deviceclass.getMinorDeviceClass();
                switch (l & 0xc0)
                {
                case 192: 
                    stringbuffer.append("/(Keyboard,Pointer)");
                    break;

                case 128: 
                    stringbuffer.append("/(Pointer)");
                    break;

                case 64: // '@'
                    stringbuffer.append("/(Keyboard)");
                    break;

                case 0: // '\0'
                    stringbuffer.append("/()");
                    break;
                }
                switch (l & 0x3c)
                {
                case 24: // '\030'
                    stringbuffer.append("/Card Reader");
                    break;

                case 20: // '\024'
                    stringbuffer.append("/Digitizer");
                    break;

                case 16: // '\020'
                    stringbuffer.append("/Sensing");
                    break;

                case 12: // '\f'
                    stringbuffer.append("/Remote Control");
                    break;

                case 8: // '\b'
                    stringbuffer.append("/Gamepad");
                    break;

                case 4: // '\004'
                    stringbuffer.append("/Joystick");
                    break;

                case 0: // '\0'
                    stringbuffer.append("/Unclassified");
                    break;

                default:
                    stringbuffer.append("/Unknown");
                    break;
                }
                break;

            case 1024: 
                stringbuffer.append("Audio");
                switch (deviceclass.getMinorDeviceClass())
                {
                case 72: // 'H'
                    stringbuffer.append("/Gaming Toy");
                    break;

                case 64: // '@'
                    stringbuffer.append("/Video Display Conferencing");
                    break;

                case 60: // '<'
                    stringbuffer.append("/Video Display Loudspeaker");
                    break;

                case 56: // '8'
                    stringbuffer.append("/Video Monitor");
                    break;

                case 52: // '4'
                    stringbuffer.append("/Camcorder");
                    break;

                case 48: // '0'
                    stringbuffer.append("/Video Camera");
                    break;

                case 44: // ','
                    stringbuffer.append("/VCR");
                    break;

                case 40: // '('
                    stringbuffer.append("/HiFi");
                    break;

                case 36: // '$'
                    stringbuffer.append("/Set-top Box");
                    break;

                case 32: // ' '
                    stringbuffer.append("/Car");
                    break;

                case 28: // '\034'
                    stringbuffer.append("/Portable");
                    break;

                case 24: // '\030'
                    stringbuffer.append("/Headphones");
                    break;

                case 20: // '\024'
                    stringbuffer.append("/Loudspeaker");
                    break;

                case 16: // '\020'
                    stringbuffer.append("/Microphone");
                    break;

                case 8: // '\b'
                    stringbuffer.append("/Hands-free");
                    break;

                case 4: // '\004'
                    stringbuffer.append("/Headset");
                    break;

                case 0: // '\0'
                    stringbuffer.append("/Unclassified");
                    break;

                default:
                    stringbuffer.append("/Unknown");
                    break;
                }
                break;

            case 768: 
                stringbuffer.append("LAN Access");
                int k = deviceclass.getMinorDeviceClass();
                switch (k & 0x1c)
                {
                case 0: // '\0'
                    stringbuffer.append("/Unclassified");
                    break;

                default:
                    stringbuffer.append("/Unknown");
                    break;
                }
                switch (k & 0xe0)
                {
                case 224: 
                    stringbuffer.append("/100% used");
                    break;

                case 192: 
                    stringbuffer.append("/84-99% used");
                    break;

                case 160: 
                    stringbuffer.append("/68-83% used");
                    break;

                case 128: 
                    stringbuffer.append("/51-67% used");
                    break;

                case 96: // '`'
                    stringbuffer.append("/34-50% used");
                    break;

                case 64: // '@'
                    stringbuffer.append("/18-33% used");
                    break;

                case 32: // ' '
                    stringbuffer.append("/1-17% used");
                    break;

                case 0: // '\0'
                    stringbuffer.append("/0% used");
                    break;
                }
                break;

            case 512: 
                stringbuffer.append("Phone");
                switch (deviceclass.getMinorDeviceClass())
                {
                case 24: // '\030'
                    stringbuffer.append("/Ring ring ring ring ring ring ring");
                    break;

                case 20: // '\024'
                    stringbuffer.append("/ISDN");
                    break;

                case 16: // '\020'
                    stringbuffer.append("/Wired Modem");
                    break;

                case 12: // '\f'
                    stringbuffer.append("/Smartphone");
                    break;

                case 8: // '\b'
                    stringbuffer.append("/Cordless");
                    break;

                case 4: // '\004'
                    stringbuffer.append("/Cellular");
                    break;

                case 0: // '\0'
                    stringbuffer.append("/Unclassified");
                    break;

                default:
                    stringbuffer.append("/Unknown");
                    break;
                }
                break;

            case 256: 
                stringbuffer.append("Computer");
                switch (deviceclass.getMinorDeviceClass())
                {
                case 24: // '\030'
                    stringbuffer.append("/Wearable");
                    break;

                case 20: // '\024'
                    stringbuffer.append("/Palm");
                    break;

                case 16: // '\020'
                    stringbuffer.append("/Handheld");
                    break;

                case 12: // '\f'
                    stringbuffer.append("/Laptop");
                    break;

                case 8: // '\b'
                    stringbuffer.append("/Server");
                    break;

                case 4: // '\004'
                    stringbuffer.append("/Desktop");
                    break;

                case 0: // '\0'
                    stringbuffer.append("/Unclassified");
                    break;

                default:
                    stringbuffer.append("/Unknown");
                    break;
                }
                break;

            case 0: // '\0'
                stringbuffer.append("Miscellaneous");
                break;

            default:
                stringbuffer.append("Unknown");
                break;
            }
            stringbuffer.append("/(");
            int i = deviceclass.getServiceClasses();
            int j = i & 0x2000;
            boolean flag = false;
            if (j != 0)
                flag = append(stringbuffer, "Limited Discovery", false);
            if ((0x10000 & i) != 0)
                flag = append(stringbuffer, "Positioning", flag);
            if ((0x20000 & i) != 0)
                flag = append(stringbuffer, "Networking", flag);
            if ((0x40000 & i) != 0)
                flag = append(stringbuffer, "Rendering", flag);
            if ((0x80000 & i) != 0)
                flag = append(stringbuffer, "Capturing", flag);
            if ((0x100000 & i) != 0)
                flag = append(stringbuffer, "Object Transfer", flag);
            if ((0x200000 & i) != 0)
                flag = append(stringbuffer, "Audio", flag);
            if ((0x400000 & i) != 0)
                flag = append(stringbuffer, "Telephony", flag);
            if ((0x800000 & i) != 0)
                append(stringbuffer, "Information", flag);
            stringbuffer.append(')');
            return stringbuffer.toString();
        }

    }


    public static final int AttributeIDServiceName = 256;
    public static final int BluetoothProfileDescriptorList = 9;
    public static final int BrowseGroupList = 5;
    public static final int ClientExecutableURL = 11;
    public static final int DocumentationURL = 10;
    public static final int IconURL = 12;
    public static final UUID L2CAP_PROTOCOL_UUID = new UUID(256L);
    public static final int L2CAP_PSM_MAX = 65535;
    public static final int L2CAP_PSM_MIN = 5;
    public static final int L2CAP_PSM_MIN_JSR_82 = 4097;
    public static final int LanguageBasedAttributeIDList = 6;
    public static final UUID OBEXFileTransferServiceClass_UUID = new UUID(4358L);
    public static final UUID OBEX_PROTOCOL_UUID = new UUID(8L);
    public static final String PROPERTY_BLUETOOTH_API_VERSION = "bluetooth.api.version";
    public static final String PROPERTY_BLUETOOTH_CONNECTED_DEVICES_MAX = "bluetooth.connected.devices.max";
    public static final String PROPERTY_BLUETOOTH_CONNECTED_INQUIRY = "bluetooth.connected.inquiry";
    public static final String PROPERTY_BLUETOOTH_CONNECTED_INQUIRY_SCAN = "bluetooth.connected.inquiry.scan";
    public static final String PROPERTY_BLUETOOTH_CONNECTED_PAGE = "bluetooth.connected.page";
    public static final String PROPERTY_BLUETOOTH_CONNECTED_PAGE_SCAN = "bluetooth.connected.page.scan";
    public static final String PROPERTY_BLUETOOTH_L2CAP_RECEIVEMTU_MAX = "bluetooth.l2cap.receiveMTU.max";
    public static final String PROPERTY_BLUETOOTH_MASTER_SWITCH = "bluetooth.master.switch";
    public static final String PROPERTY_BLUETOOTH_SD_ATTR_RETRIEVABLE_MAX = "bluetooth.sd.attr.retrievable.max";
    public static final String PROPERTY_BLUETOOTH_SD_TRANS_MAX = "bluetooth.sd.trans.max";
    public static final String PROPERTY_OBEX_API_VERSION = "obex.api.version";
    public static final String PROTOCOL_SCHEME_BT_OBEX = "btgoep";
    public static final String PROTOCOL_SCHEME_L2CAP = "btl2cap";
    public static final String PROTOCOL_SCHEME_RFCOMM = "btspp";
    public static final String PROTOCOL_SCHEME_TCP_OBEX = "tcpobex";
    public static final int ProtocolDescriptorList = 4;
    public static final int ProviderName = 2;
    public static final int RFCOMM_CHANNEL_MAX = 30;
    public static final int RFCOMM_CHANNEL_MIN = 1;
    public static final UUID RFCOMM_PROTOCOL_UUID = new UUID(3L);
    public static final UUID SERIAL_PORT_UUID = new UUID(4353L);
    public static final String SHORT_UUID_BASE = "00001000800000805F9B34FB";
    public static final int ServiceAvailability = 8;
    public static final int ServiceClassIDList = 1;
    public static final int ServiceDatabaseState = 513;
    public static final int ServiceDescription = 1;
    public static final int ServiceID = 3;
    public static final int ServiceInfoTimeToLive = 7;
    public static final int ServiceName = 0;
    public static final int ServiceRecordHandle = 0;
    public static final int ServiceRecordState = 2;
    public static final int TCP_OBEX_DEFAULT_PORT = 650;
    public static final int VersionNumberList = 512;
    static Hashtable obexUUIDs = new Hashtable();

    private BluetoothConsts()
    {
    }

    private static void addObex(int i)
    {
        UUID uuid = new UUID(i);
        obexUUIDs.put(uuid, uuid);
    }

    public static String toString(DeviceClass deviceclass)
    {
        return DeviceClassConsts.toString(deviceclass);
    }

    static 
    {
        addObex(4356);
        addObex(4357);
        addObex(4358);
        addObex(4359);
        addObex(4379);
    }
}
