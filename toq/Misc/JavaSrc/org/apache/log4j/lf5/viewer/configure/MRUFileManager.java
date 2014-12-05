// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.apache.log4j.lf5.viewer.configure;

import java.io.*;
import java.net.URL;
import java.util.Iterator;
import java.util.LinkedList;

public class MRUFileManager
{

    private static final String CONFIG_FILE_NAME = "mru_file_manager";
    private static final int DEFAULT_MAX_SIZE = 3;
    private int _maxSize;
    private LinkedList _mruFileList;

    public MRUFileManager()
    {
        _maxSize = 0;
        load();
        setMaxSize(3);
    }

    public MRUFileManager(int i)
    {
        _maxSize = 0;
        load();
        setMaxSize(i);
    }

    public static void createConfigurationDirectory()
    {
        File file;
        String s = System.getProperty("user.home");
        String s1 = System.getProperty("file.separator");
        file = new File(s + s1 + "lf5");
        if (file.exists())
            break MISSING_BLOCK_LABEL_55;
        file.mkdir();
        return;
        SecurityException securityexception;
        securityexception;
        securityexception.printStackTrace();
        return;
    }

    public Object getFile(int i)
    {
        if (i < size())
            return _mruFileList.get(i);
        else
            return null;
    }

    protected String getFilename()
    {
        String s = System.getProperty("user.home");
        String s1 = System.getProperty("file.separator");
        return s + s1 + "lf5" + s1 + "mru_file_manager";
    }

    public InputStream getInputStream(int i)
        throws IOException, FileNotFoundException
    {
        if (i < size())
        {
            Object obj = getFile(i);
            if (obj instanceof File)
                return getInputStream((File)obj);
            else
                return getInputStream((URL)obj);
        } else
        {
            return null;
        }
    }

    protected InputStream getInputStream(File file)
        throws IOException, FileNotFoundException
    {
        return new BufferedInputStream(new FileInputStream(file));
    }

    protected InputStream getInputStream(URL url)
        throws IOException
    {
        return url.openStream();
    }

    public String[] getMRUFileList()
    {
        String as[];
        if (size() == 0)
        {
            as = null;
        } else
        {
            as = new String[size()];
            for (int i = 0; i < size(); i++)
            {
                Object obj = getFile(i);
                if (obj instanceof File)
                    as[i] = ((File)obj).getAbsolutePath();
                else
                    as[i] = obj.toString();
            }

        }
        return as;
    }

    protected void load()
    {
        createConfigurationDirectory();
        File file = new File(getFilename());
        if (file.exists())
        {
            try
            {
                ObjectInputStream objectinputstream = new ObjectInputStream(new FileInputStream(file));
                _mruFileList = (LinkedList)objectinputstream.readObject();
                objectinputstream.close();
                Iterator iterator = _mruFileList.iterator();
                do
                {
                    if (!iterator.hasNext())
                        break;
                    Object obj = iterator.next();
                    if (!(obj instanceof File) && !(obj instanceof URL))
                        iterator.remove();
                } while (true);
            }
            catch (Exception exception)
            {
                _mruFileList = new LinkedList();
            }
            return;
        } else
        {
            _mruFileList = new LinkedList();
            return;
        }
    }

    public void moveToTop(int i)
    {
        _mruFileList.add(0, _mruFileList.remove(i));
    }

    public void save()
    {
        File file = new File(getFilename());
        try
        {
            ObjectOutputStream objectoutputstream = new ObjectOutputStream(new FileOutputStream(file));
            objectoutputstream.writeObject(_mruFileList);
            objectoutputstream.flush();
            objectoutputstream.close();
            return;
        }
        catch (Exception exception)
        {
            exception.printStackTrace();
        }
    }

    public void set(File file)
    {
        setMRU(file);
    }

    public void set(URL url)
    {
        setMRU(url);
    }

    protected void setMRU(Object obj)
    {
        int i = _mruFileList.indexOf(obj);
        if (i == -1)
        {
            _mruFileList.add(0, obj);
            setMaxSize(_maxSize);
            return;
        } else
        {
            moveToTop(i);
            return;
        }
    }

    protected void setMaxSize(int i)
    {
        if (i < _mruFileList.size())
        {
            for (int j = 0; j < _mruFileList.size() - i; j++)
                _mruFileList.removeLast();

        }
        _maxSize = i;
    }

    public int size()
    {
        return _mruFileList.size();
    }
}
