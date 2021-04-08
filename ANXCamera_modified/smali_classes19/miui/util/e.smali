.class Lmiui/util/e;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/util/ErrorReport;->a(Landroid/content/Context;Lmiui/util/ErrorReport$b;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic ad:Landroid/content/Context;

.field final synthetic jd:Lmiui/util/ErrorReport$b;

.field final synthetic kd:I


# direct methods
.method constructor <init>(Landroid/content/Context;Lmiui/util/ErrorReport$b;I)V
    .locals 0

    iput-object p1, p0, Lmiui/util/e;->ad:Landroid/content/Context;

    iput-object p2, p0, Lmiui/util/e;->jd:Lmiui/util/ErrorReport$b;

    iput p3, p0, Lmiui/util/e;->kd:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lmiui/util/e;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 1

    iget-object p1, p0, Lmiui/util/e;->ad:Landroid/content/Context;

    iget-object v0, p0, Lmiui/util/e;->jd:Lmiui/util/ErrorReport$b;

    invoke-interface {v0}, Lmiui/util/ErrorReport$b;->getData()Lorg/json/JSONObject;

    move-result-object v0

    iget p0, p0, Lmiui/util/e;->kd:I

    invoke-static {p1, v0, p0}, Lmiui/util/ErrorReport;->sendReportRequest(Landroid/content/Context;Lorg/json/JSONObject;I)Z

    const/4 p0, 0x0

    return-object p0
.end method
