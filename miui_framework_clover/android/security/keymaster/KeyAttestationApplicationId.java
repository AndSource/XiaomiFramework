// Decompiled by Jad v1.5.8g. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.kpdus.com/jad.html
// Decompiler options: packimports(3) 

package android.security.keymaster;

import android.os.Parcel;
import android.os.Parcelable;

// Referenced classes of package android.security.keymaster:
//            KeyAttestationPackageInfo

public class KeyAttestationApplicationId
    implements Parcelable
{

    KeyAttestationApplicationId(Parcel parcel)
    {
        mAttestationPackageInfos = (KeyAttestationPackageInfo[])parcel.createTypedArray(KeyAttestationPackageInfo.CREATOR);
    }

    public KeyAttestationApplicationId(KeyAttestationPackageInfo akeyattestationpackageinfo[])
    {
        mAttestationPackageInfos = akeyattestationpackageinfo;
    }

    public int describeContents()
    {
        return 0;
    }

    public KeyAttestationPackageInfo[] getAttestationPackageInfos()
    {
        return mAttestationPackageInfos;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        parcel.writeTypedArray(mAttestationPackageInfos, i);
    }

    public static final android.os.Parcelable.Creator CREATOR = new android.os.Parcelable.Creator() {

        public KeyAttestationApplicationId createFromParcel(Parcel parcel)
        {
            return new KeyAttestationApplicationId(parcel);
        }

        public volatile Object createFromParcel(Parcel parcel)
        {
            return createFromParcel(parcel);
        }

        public KeyAttestationApplicationId[] newArray(int i)
        {
            return new KeyAttestationApplicationId[i];
        }

        public volatile Object[] newArray(int i)
        {
            return newArray(i);
        }

    }
;
    private final KeyAttestationPackageInfo mAttestationPackageInfos[];

}
