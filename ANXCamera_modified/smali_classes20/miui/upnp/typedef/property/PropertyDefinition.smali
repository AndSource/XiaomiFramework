.class public Lmiui/upnp/typedef/property/PropertyDefinition;
.super Ljava/lang/Object;
.source "PropertyDefinition.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/upnp/typedef/property/PropertyDefinition;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private allowedValueList:Lmiui/upnp/typedef/property/AllowedValueList;

.field private allowedValueRange:Lmiui/upnp/typedef/property/AllowedValueRange;

.field private allowedValueType:Lmiui/upnp/typedef/property/AllowedValueType;

.field private dataType:Lmiui/upnp/typedef/datatype/DataType;

.field private defaultValue:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private sendEvents:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lmiui/upnp/typedef/property/PropertyDefinition;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/upnp/typedef/property/PropertyDefinition;->TAG:Ljava/lang/String;

    new-instance v0, Lmiui/upnp/typedef/property/PropertyDefinition$1;

    invoke-direct {v0}, Lmiui/upnp/typedef/property/PropertyDefinition$1;-><init>()V

    sput-object v0, Lmiui/upnp/typedef/property/PropertyDefinition;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lmiui/upnp/typedef/property/AllowedValueType;->ANY:Lmiui/upnp/typedef/property/AllowedValueType;

    iput-object v0, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->allowedValueType:Lmiui/upnp/typedef/property/AllowedValueType;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lmiui/upnp/typedef/property/AllowedValueType;->ANY:Lmiui/upnp/typedef/property/AllowedValueType;

    iput-object v0, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->allowedValueType:Lmiui/upnp/typedef/property/AllowedValueType;

    invoke-virtual {p0, p1}, Lmiui/upnp/typedef/property/PropertyDefinition;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lmiui/upnp/typedef/property/AllowedValueType;->ANY:Lmiui/upnp/typedef/property/AllowedValueType;

    iput-object v0, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->allowedValueType:Lmiui/upnp/typedef/property/AllowedValueType;

    invoke-virtual {p0, p1}, Lmiui/upnp/typedef/property/PropertyDefinition;->setName(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lmiui/upnp/typedef/property/PropertyDefinition;->setDataType(Lmiui/upnp/typedef/datatype/DataType;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lmiui/upnp/typedef/datatype/DataType;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lmiui/upnp/typedef/property/AllowedValueType;->ANY:Lmiui/upnp/typedef/property/AllowedValueType;

    iput-object v0, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->allowedValueType:Lmiui/upnp/typedef/property/AllowedValueType;

    invoke-virtual {p0, p1}, Lmiui/upnp/typedef/property/PropertyDefinition;->setName(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lmiui/upnp/typedef/property/PropertyDefinition;->setDataType(Lmiui/upnp/typedef/datatype/DataType;)V

    invoke-virtual {p0, p3}, Lmiui/upnp/typedef/property/PropertyDefinition;->setSendEvents(Z)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    move-object v2, p1

    check-cast v2, Lmiui/upnp/typedef/property/PropertyDefinition;

    iget-object v3, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->name:Ljava/lang/String;

    if-nez v3, :cond_3

    iget-object v3, v2, Lmiui/upnp/typedef/property/PropertyDefinition;->name:Ljava/lang/String;

    if-eqz v3, :cond_4

    return v1

    :cond_3
    iget-object v4, v2, Lmiui/upnp/typedef/property/PropertyDefinition;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public getAllowedValueList()Lmiui/upnp/typedef/property/AllowedValueList;
    .locals 1

    iget-object v0, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->allowedValueList:Lmiui/upnp/typedef/property/AllowedValueList;

    return-object v0
.end method

.method public getAllowedValueRange()Lmiui/upnp/typedef/property/AllowedValueRange;
    .locals 1

    iget-object v0, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->allowedValueRange:Lmiui/upnp/typedef/property/AllowedValueRange;

    return-object v0
.end method

.method public getAllowedValueType()Lmiui/upnp/typedef/property/AllowedValueType;
    .locals 1

    iget-object v0, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->allowedValueType:Lmiui/upnp/typedef/property/AllowedValueType;

    return-object v0
.end method

.method public getDataType()Lmiui/upnp/typedef/datatype/DataType;
    .locals 1

    iget-object v0, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->dataType:Lmiui/upnp/typedef/datatype/DataType;

    return-object v0
.end method

.method public getDefaultValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->defaultValue:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->name:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    const/16 v0, 0x1f

    const/4 v1, 0x1

    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->name:Ljava/lang/String;

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    return v2
.end method

.method public isSendEvents()Z
    .locals 1

    iget-boolean v0, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->sendEvents:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Z

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readBooleanArray([Z)V

    const/4 v2, 0x0

    aget-boolean v2, v1, v2

    iput-boolean v2, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->sendEvents:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->name:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lmiui/upnp/typedef/datatype/DataType;->valueOf(Ljava/lang/String;)Lmiui/upnp/typedef/datatype/DataType;

    move-result-object v2

    iput-object v2, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->dataType:Lmiui/upnp/typedef/datatype/DataType;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->defaultValue:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Lmiui/upnp/typedef/property/AllowedValueType;->retrieveType(I)Lmiui/upnp/typedef/property/AllowedValueType;

    move-result-object v2

    iput-object v2, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->allowedValueType:Lmiui/upnp/typedef/property/AllowedValueType;

    sget-object v2, Lmiui/upnp/typedef/property/PropertyDefinition$2;->$SwitchMap$miui$upnp$typedef$property$AllowedValueType:[I

    iget-object v3, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->allowedValueType:Lmiui/upnp/typedef/property/AllowedValueType;

    invoke-virtual {v3}, Lmiui/upnp/typedef/property/AllowedValueType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v0, :cond_2

    const/4 v0, 0x2

    if-eq v2, v0, :cond_1

    const/4 v0, 0x3

    if-eq v2, v0, :cond_0

    goto :goto_0

    :cond_0
    const-class v0, Lmiui/upnp/typedef/property/AllowedValueRange;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lmiui/upnp/typedef/property/AllowedValueRange;

    iput-object v0, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->allowedValueRange:Lmiui/upnp/typedef/property/AllowedValueRange;

    goto :goto_0

    :cond_1
    const-class v0, Lmiui/upnp/typedef/property/AllowedValueList;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lmiui/upnp/typedef/property/AllowedValueList;

    iput-object v0, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->allowedValueList:Lmiui/upnp/typedef/property/AllowedValueList;

    goto :goto_0

    :cond_2
    nop

    :goto_0
    return-void
.end method

.method public setAllowedValueList(Lmiui/upnp/typedef/property/AllowedValueList;)V
    .locals 1

    sget-object v0, Lmiui/upnp/typedef/property/AllowedValueType;->LIST:Lmiui/upnp/typedef/property/AllowedValueType;

    iput-object v0, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->allowedValueType:Lmiui/upnp/typedef/property/AllowedValueType;

    iput-object p1, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->allowedValueList:Lmiui/upnp/typedef/property/AllowedValueList;

    return-void
.end method

.method public setAllowedValueRange(Lmiui/upnp/typedef/property/AllowedValueRange;)V
    .locals 1

    sget-object v0, Lmiui/upnp/typedef/property/AllowedValueType;->RANGE:Lmiui/upnp/typedef/property/AllowedValueType;

    iput-object v0, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->allowedValueType:Lmiui/upnp/typedef/property/AllowedValueType;

    iput-object p1, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->allowedValueRange:Lmiui/upnp/typedef/property/AllowedValueRange;

    return-void
.end method

.method public setAllowedValueType(Lmiui/upnp/typedef/property/AllowedValueType;)V
    .locals 0

    iput-object p1, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->allowedValueType:Lmiui/upnp/typedef/property/AllowedValueType;

    return-void
.end method

.method public setDataType(Lmiui/upnp/typedef/datatype/DataType;)V
    .locals 0

    iput-object p1, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->dataType:Lmiui/upnp/typedef/datatype/DataType;

    return-void
.end method

.method public setDefaultValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->defaultValue:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->name:Ljava/lang/String;

    return-void
.end method

.method public setSendEvents(Ljava/lang/String;)V
    .locals 1

    invoke-static {p1}, Lmiui/upnp/typedef/datatype/DataType;->BooleanValueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->sendEvents:Z

    return-void
.end method

.method public setSendEvents(Z)V
    .locals 0

    iput-boolean p1, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->sendEvents:Z

    return-void
.end method

.method public validate(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->dataType:Lmiui/upnp/typedef/datatype/DataType;

    invoke-virtual {v1}, Lmiui/upnp/typedef/datatype/DataType;->getJavaDataType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    sget-object v1, Lmiui/upnp/typedef/property/PropertyDefinition;->TAG:Ljava/lang/String;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->dataType:Lmiui/upnp/typedef/datatype/DataType;

    invoke-virtual {v4}, Lmiui/upnp/typedef/datatype/DataType;->getJavaDataType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    const-string v2, "dataType is %s, value type is %s, invalid!"

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    iget-object v0, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->allowedValueList:Lmiui/upnp/typedef/property/AllowedValueList;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lmiui/upnp/typedef/property/AllowedValueList;->isValid(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_2
    iget-object v0, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->allowedValueRange:Lmiui/upnp/typedef/property/AllowedValueRange;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lmiui/upnp/typedef/property/AllowedValueRange;->isValid(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_3
    return v2
.end method

.method public valueOf(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->dataType:Lmiui/upnp/typedef/datatype/DataType;

    invoke-virtual {v0, p1}, Lmiui/upnp/typedef/datatype/DataType;->toObjectValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [Z

    iget-boolean v2, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->sendEvents:Z

    const/4 v3, 0x0

    aput-boolean v2, v1, v3

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    iget-object v2, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->name:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->dataType:Lmiui/upnp/typedef/datatype/DataType;

    invoke-virtual {v2}, Lmiui/upnp/typedef/datatype/DataType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->defaultValue:Ljava/lang/String;

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v2, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->allowedValueType:Lmiui/upnp/typedef/property/AllowedValueType;

    invoke-virtual {v2}, Lmiui/upnp/typedef/property/AllowedValueType;->toInt()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    sget-object v2, Lmiui/upnp/typedef/property/PropertyDefinition$2;->$SwitchMap$miui$upnp$typedef$property$AllowedValueType:[I

    iget-object v3, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->allowedValueType:Lmiui/upnp/typedef/property/AllowedValueType;

    invoke-virtual {v3}, Lmiui/upnp/typedef/property/AllowedValueType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    if-eq v2, v0, :cond_2

    const/4 v0, 0x2

    if-eq v2, v0, :cond_1

    const/4 v0, 0x3

    if-eq v2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->allowedValueRange:Lmiui/upnp/typedef/property/AllowedValueRange;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmiui/upnp/typedef/property/PropertyDefinition;->allowedValueList:Lmiui/upnp/typedef/property/AllowedValueList;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    :cond_2
    nop

    :goto_0
    return-void
.end method
