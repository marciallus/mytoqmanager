// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) fieldsfirst noctor space 

package org.alljoyn.bus.ifaces;

import java.util.Map;
import org.alljoyn.bus.BusException;

public interface DBusProxyObj
{
    public static final class ReleaseNameResult extends Enum
    {

        private static final ReleaseNameResult $VALUES[];
        public static final ReleaseNameResult Invalid;
        public static final ReleaseNameResult NonExistent;
        public static final ReleaseNameResult NotOwner;
        public static final ReleaseNameResult Released;

        public static ReleaseNameResult valueOf(String s)
        {
            return (ReleaseNameResult)Enum.valueOf(org/alljoyn/bus/ifaces/DBusProxyObj$ReleaseNameResult, s);
        }

        public static ReleaseNameResult[] values()
        {
            return (ReleaseNameResult[])$VALUES.clone();
        }

        static 
        {
            Invalid = new ReleaseNameResult("Invalid", 0);
            Released = new ReleaseNameResult("Released", 1);
            NonExistent = new ReleaseNameResult("NonExistent", 2);
            NotOwner = new ReleaseNameResult("NotOwner", 3);
            ReleaseNameResult areleasenameresult[] = new ReleaseNameResult[4];
            areleasenameresult[0] = Invalid;
            areleasenameresult[1] = Released;
            areleasenameresult[2] = NonExistent;
            areleasenameresult[3] = NotOwner;
            $VALUES = areleasenameresult;
        }

        private ReleaseNameResult(String s, int i)
        {
            super(s, i);
        }
    }

    public static final class RequestNameResult extends Enum
    {

        private static final RequestNameResult $VALUES[];
        public static final RequestNameResult AlreadyExists;
        public static final RequestNameResult AlreadyOwner;
        public static final RequestNameResult InQueue;
        public static final RequestNameResult Invalid;
        public static final RequestNameResult PrimaryOwner;

        public static RequestNameResult valueOf(String s)
        {
            return (RequestNameResult)Enum.valueOf(org/alljoyn/bus/ifaces/DBusProxyObj$RequestNameResult, s);
        }

        public static RequestNameResult[] values()
        {
            return (RequestNameResult[])$VALUES.clone();
        }

        static 
        {
            Invalid = new RequestNameResult("Invalid", 0);
            PrimaryOwner = new RequestNameResult("PrimaryOwner", 1);
            InQueue = new RequestNameResult("InQueue", 2);
            AlreadyExists = new RequestNameResult("AlreadyExists", 3);
            AlreadyOwner = new RequestNameResult("AlreadyOwner", 4);
            RequestNameResult arequestnameresult[] = new RequestNameResult[5];
            arequestnameresult[0] = Invalid;
            arequestnameresult[1] = PrimaryOwner;
            arequestnameresult[2] = InQueue;
            arequestnameresult[3] = AlreadyExists;
            arequestnameresult[4] = AlreadyOwner;
            $VALUES = arequestnameresult;
        }

        private RequestNameResult(String s, int i)
        {
            super(s, i);
        }
    }

    public static final class StartServiceByNameResult extends Enum
    {

        private static final StartServiceByNameResult $VALUES[];
        public static final StartServiceByNameResult AlreadyRunning;
        public static final StartServiceByNameResult Invalid;
        public static final StartServiceByNameResult Success;

        public static StartServiceByNameResult valueOf(String s)
        {
            return (StartServiceByNameResult)Enum.valueOf(org/alljoyn/bus/ifaces/DBusProxyObj$StartServiceByNameResult, s);
        }

        public static StartServiceByNameResult[] values()
        {
            return (StartServiceByNameResult[])$VALUES.clone();
        }

        static 
        {
            Invalid = new StartServiceByNameResult("Invalid", 0);
            Success = new StartServiceByNameResult("Success", 1);
            AlreadyRunning = new StartServiceByNameResult("AlreadyRunning", 2);
            StartServiceByNameResult astartservicebynameresult[] = new StartServiceByNameResult[3];
            astartservicebynameresult[0] = Invalid;
            astartservicebynameresult[1] = Success;
            astartservicebynameresult[2] = AlreadyRunning;
            $VALUES = astartservicebynameresult;
        }

        private StartServiceByNameResult(String s, int i)
        {
            super(s, i);
        }
    }


    public static final int REQUEST_NAME_ALLOW_REPLACEMENT = 1;
    public static final int REQUEST_NAME_DO_NOT_QUEUE = 4;
    public static final int REQUEST_NAME_NO_FLAGS = 0;
    public static final int REQUEST_NAME_REPLACE_EXISTING = 2;

    public abstract void AddMatch(String s)
        throws BusException;

    public abstract byte[] GetAdtAuditSessionData(String s)
        throws BusException;

    public abstract byte[] GetConnectionSELinuxSecurityContext(String s)
        throws BusException;

    public abstract int GetConnectionUnixProcessID(String s)
        throws BusException;

    public abstract int GetConnectionUnixUser(String s)
        throws BusException;

    public abstract String GetId()
        throws BusException;

    public abstract String GetNameOwner(String s)
        throws BusException;

    public abstract String Hello()
        throws BusException;

    public abstract String[] ListActivatableNames()
        throws BusException;

    public abstract String[] ListNames()
        throws BusException;

    public abstract String[] ListQueuedOwners(String s)
        throws BusException;

    public abstract void NameAcquired(String s)
        throws BusException;

    public abstract boolean NameHasOwner(String s)
        throws BusException;

    public abstract void NameLost(String s)
        throws BusException;

    public abstract void NameOwnerChanged(String s, String s1, String s2)
        throws BusException;

    public abstract void PropertiesChanged(String s, Map map, String as[])
        throws BusException;

    public abstract ReleaseNameResult ReleaseName(String s)
        throws BusException;

    public abstract void ReloadConfig()
        throws BusException;

    public abstract void RemoveMatch(String s)
        throws BusException;

    public abstract RequestNameResult RequestName(String s, int i)
        throws BusException;

    public abstract StartServiceByNameResult StartServiceByName(String s, int i)
        throws BusException;

    public abstract void UpdateActivationEnvironment(Map map)
        throws BusException;
}
