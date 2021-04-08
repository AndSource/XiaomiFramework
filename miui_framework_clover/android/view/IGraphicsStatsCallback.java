// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package android.view;

import android.os.*;

public interface IGraphicsStatsCallback
    extends IInterface
{
    public static abstract class Stub extends Binder
        implements IGraphicsStatsCallback
    {

        public static IGraphicsStatsCallback asInterface(IBinder ibinder)
        {
            if(ibinder == null)
                return null;
            IInterface iinterface = ibinder.queryLocalInterface("android.view.IGraphicsStatsCallback");
            if(iinterface != null && (iinterface instanceof IGraphicsStatsCallback))
                return (IGraphicsStatsCallback)iinterface;
            else
                return new Proxy(ibinder);
        }

        public IBinder asBinder()
        {
            return this;
        }

        public boolean onTransact(int i, Parcel parcel, Parcel parcel1, int j)
            throws RemoteException
        {
            switch(i)
            {
            default:
                return super.onTransact(i, parcel, parcel1, j);

            case 1598968902: 
                parcel1.writeString("android.view.IGraphicsStatsCallback");
                return true;

            case 1: // '\001'
                parcel.enforceInterface("android.view.IGraphicsStatsCallback");
                onRotateGraphicsStatsBuffer();
                return true;
            }
        }

        private static final String DESCRIPTOR = "android.view.IGraphicsStatsCallback";
        static final int TRANSACTION_onRotateGraphicsStatsBuffer = 1;

        public Stub()
        {
            attachInterface(this, "android.view.IGraphicsStatsCallback");
        }
    }

    private static class Stub.Proxy
        implements IGraphicsStatsCallback
    {

        public IBinder asBinder()
        {
            return mRemote;
        }

        public String getInterfaceDescriptor()
        {
            return "android.view.IGraphicsStatsCallback";
        }

        public void onRotateGraphicsStatsBuffer()
            throws RemoteException
        {
            Parcel parcel = Parcel.obtain();
            parcel.writeInterfaceToken("android.view.IGraphicsStatsCallback");
            mRemote.transact(1, parcel, null, 1);
            parcel.recycle();
            return;
            Exception exception;
            exception;
            parcel.recycle();
            throw exception;
        }

        private IBinder mRemote;

        Stub.Proxy(IBinder ibinder)
        {
            mRemote = ibinder;
        }
    }


    public abstract void onRotateGraphicsStatsBuffer()
        throws RemoteException;
}
