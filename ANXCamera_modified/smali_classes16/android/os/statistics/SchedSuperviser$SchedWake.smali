.class public final Landroid/os/statistics/SchedSuperviser$SchedWake;
.super Landroid/os/statistics/MicroscopicEvent;
.source "SchedSuperviser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/SchedSuperviser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SchedWake"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/statistics/MicroscopicEvent<",
        "Landroid/os/statistics/SchedSuperviser$SchedWakeFields;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/statistics/SchedSuperviser$SchedWake;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/statistics/SchedSuperviser$SchedWake$1;

    invoke-direct {v0}, Landroid/os/statistics/SchedSuperviser$SchedWake$1;-><init>()V

    sput-object v0, Landroid/os/statistics/SchedSuperviser$SchedWake;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    new-instance v0, Landroid/os/statistics/SchedSuperviser$SchedWakeFields;

    invoke-direct {v0}, Landroid/os/statistics/SchedSuperviser$SchedWakeFields;-><init>()V

    const/16 v1, 0xe

    invoke-direct {p0, v1, v0}, Landroid/os/statistics/MicroscopicEvent;-><init>(ILandroid/os/statistics/MicroscopicEvent$MicroEventFields;)V

    return-void
.end method
