.class public Lmiui/upnp/typedef/property/PropertyList;
.super Ljava/lang/Object;
.source "PropertyList.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lmiui/upnp/typedef/property/PropertyList;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private propertyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lmiui/upnp/typedef/property/Property;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lmiui/upnp/typedef/property/PropertyList;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/upnp/typedef/property/PropertyList;->TAG:Ljava/lang/String;

    new-instance v0, Lmiui/upnp/typedef/property/PropertyList$1;

    invoke-direct {v0}, Lmiui/upnp/typedef/property/PropertyList$1;-><init>()V

    sput-object v0, Lmiui/upnp/typedef/property/PropertyList;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/property/PropertyList;->propertyList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/upnp/typedef/property/PropertyList;->propertyList:Ljava/util/List;

    invoke-virtual {p0, p1}, Lmiui/upnp/typedef/property/PropertyList;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public cleanState()V
    .locals 3

    iget-object v0, p0, Lmiui/upnp/typedef/property/PropertyList;->propertyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/upnp/typedef/property/Property;

    invoke-virtual {v1}, Lmiui/upnp/typedef/property/Property;->getPropertyValue()Lmiui/upnp/typedef/property/PropertyValue;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/upnp/typedef/property/PropertyValue;->cleanState()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getChangedPropertyList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiui/upnp/typedef/property/Property;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/upnp/typedef/property/PropertyList;->propertyList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/upnp/typedef/property/Property;

    invoke-virtual {v2}, Lmiui/upnp/typedef/property/Property;->getPropertyValue()Lmiui/upnp/typedef/property/PropertyValue;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/upnp/typedef/property/PropertyValue;->isChanged()Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez v0, :cond_0

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v3

    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lmiui/upnp/typedef/property/Property;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lmiui/upnp/typedef/property/PropertyList;->propertyList:Ljava/util/List;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Lmiui/upnp/typedef/property/Property;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/upnp/typedef/property/PropertyList;->propertyList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/upnp/typedef/property/Property;

    invoke-virtual {v2}, Lmiui/upnp/typedef/property/Property;->getDefinition()Lmiui/upnp/typedef/property/PropertyDefinition;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/upnp/typedef/property/PropertyDefinition;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v2

    :cond_0
    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getProperty(Lmiui/upnp/typedef/property/PropertyDefinition;)Lmiui/upnp/typedef/property/Property;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/upnp/typedef/property/PropertyList;->propertyList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/upnp/typedef/property/Property;

    invoke-virtual {v2}, Lmiui/upnp/typedef/property/Property;->getDefinition()Lmiui/upnp/typedef/property/PropertyDefinition;

    move-result-object v3

    invoke-virtual {v3, p1}, Lmiui/upnp/typedef/property/PropertyDefinition;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v2

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public getPropertyDataValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lmiui/upnp/typedef/property/PropertyList;->getProperty(Ljava/lang/String;)Lmiui/upnp/typedef/property/Property;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lmiui/upnp/typedef/property/Property;->getCurrentValue()Ljava/lang/Object;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getPropertyDataValue(Lmiui/upnp/typedef/property/PropertyDefinition;)Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/upnp/typedef/property/PropertyList;->propertyList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/upnp/typedef/property/Property;

    invoke-virtual {v2}, Lmiui/upnp/typedef/property/Property;->getDefinition()Lmiui/upnp/typedef/property/PropertyDefinition;

    move-result-object v3

    invoke-virtual {v3, p1}, Lmiui/upnp/typedef/property/PropertyDefinition;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lmiui/upnp/typedef/property/Property;->getCurrentValue()Ljava/lang/Object;

    move-result-object v0

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public getPropertyDefinition(Ljava/lang/String;)Lmiui/upnp/typedef/property/PropertyDefinition;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/upnp/typedef/property/PropertyList;->propertyList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/upnp/typedef/property/Property;

    invoke-virtual {v2}, Lmiui/upnp/typedef/property/Property;->getDefinition()Lmiui/upnp/typedef/property/PropertyDefinition;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/upnp/typedef/property/PropertyDefinition;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lmiui/upnp/typedef/property/Property;->getDefinition()Lmiui/upnp/typedef/property/PropertyDefinition;

    move-result-object v0

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public getPropertyValue(Lmiui/upnp/typedef/property/PropertyDefinition;)Lmiui/upnp/typedef/property/PropertyValue;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/upnp/typedef/property/PropertyList;->propertyList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/upnp/typedef/property/Property;

    invoke-virtual {v2}, Lmiui/upnp/typedef/property/Property;->getDefinition()Lmiui/upnp/typedef/property/PropertyDefinition;

    move-result-object v3

    invoke-virtual {v3, p1}, Lmiui/upnp/typedef/property/PropertyDefinition;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lmiui/upnp/typedef/property/Property;->getPropertyValue()Lmiui/upnp/typedef/property/PropertyValue;

    move-result-object v0

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public initProperty(Lmiui/upnp/typedef/property/Property;)V
    .locals 1

    iget-object v0, p0, Lmiui/upnp/typedef/property/PropertyList;->propertyList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public initProperty(Lmiui/upnp/typedef/property/PropertyDefinition;Ljava/lang/Object;)V
    .locals 2

    new-instance v0, Lmiui/upnp/typedef/property/Property;

    invoke-direct {v0, p1, p2}, Lmiui/upnp/typedef/property/Property;-><init>(Lmiui/upnp/typedef/property/PropertyDefinition;Ljava/lang/Object;)V

    iget-object v1, p0, Lmiui/upnp/typedef/property/PropertyList;->propertyList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public isChanged()Z
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p0, Lmiui/upnp/typedef/property/PropertyList;->propertyList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/upnp/typedef/property/Property;

    invoke-virtual {v2}, Lmiui/upnp/typedef/property/Property;->getPropertyValue()Lmiui/upnp/typedef/property/PropertyValue;

    move-result-object v3

    invoke-virtual {v3}, Lmiui/upnp/typedef/property/PropertyValue;->isChanged()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 4

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    const-class v2, Lmiui/upnp/typedef/property/Property;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lmiui/upnp/typedef/property/Property;

    iget-object v3, p0, Lmiui/upnp/typedef/property/PropertyList;->propertyList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPropertyDataValue(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lmiui/upnp/typedef/property/PropertyList;->getPropertyDefinition(Ljava/lang/String;)Lmiui/upnp/typedef/property/PropertyDefinition;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1, p2}, Lmiui/upnp/typedef/property/PropertyList;->setPropertyDataValue(Lmiui/upnp/typedef/property/PropertyDefinition;Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0
.end method

.method public setPropertyDataValue(Lmiui/upnp/typedef/property/PropertyDefinition;Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Lmiui/upnp/typedef/property/PropertyDefinition;->validate(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lmiui/upnp/typedef/property/PropertyList;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const-string v3, "invalid value: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lmiui/upnp/typedef/property/PropertyList;->getPropertyValue(Lmiui/upnp/typedef/property/PropertyDefinition;)Lmiui/upnp/typedef/property/PropertyValue;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {v1, p2}, Lmiui/upnp/typedef/property/PropertyValue;->update(Ljava/lang/Object;)V

    :goto_0
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-object v0, p0, Lmiui/upnp/typedef/property/PropertyList;->propertyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lmiui/upnp/typedef/property/PropertyList;->propertyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/upnp/typedef/property/Property;

    invoke-virtual {p1, v1, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    goto :goto_0

    :cond_0
    return-void
.end method
