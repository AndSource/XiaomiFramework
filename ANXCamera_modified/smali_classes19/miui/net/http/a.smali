.class Lmiui/net/http/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiui/net/http/HttpResponse;


# instance fields
.field private ZR:Ljava/lang/String;

.field private _R:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private gr:Ljava/io/InputStream;

.field private mContentType:Ljava/lang/String;

.field private mI:J

.field private mStatusCode:I


# direct methods
.method public constructor <init>(ILjava/util/Map;Ljava/io/InputStream;JLjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/InputStream;",
            "J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmiui/net/http/a;->mStatusCode:I

    iput-object p3, p0, Lmiui/net/http/a;->gr:Ljava/io/InputStream;

    iput-wide p4, p0, Lmiui/net/http/a;->mI:J

    iput-object p6, p0, Lmiui/net/http/a;->mContentType:Ljava/lang/String;

    iput-object p7, p0, Lmiui/net/http/a;->ZR:Ljava/lang/String;

    iput-object p2, p0, Lmiui/net/http/a;->_R:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;J)V
    .locals 0

    iput-object p1, p0, Lmiui/net/http/a;->gr:Ljava/io/InputStream;

    iput-wide p2, p0, Lmiui/net/http/a;->mI:J

    return-void
.end method

.method public getContent()Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, Lmiui/net/http/a;->gr:Ljava/io/InputStream;

    return-object p0
.end method

.method public getContentEncoding()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lmiui/net/http/a;->ZR:Ljava/lang/String;

    return-object p0
.end method

.method public getContentLength()J
    .locals 2

    iget-wide v0, p0, Lmiui/net/http/a;->mI:J

    return-wide v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lmiui/net/http/a;->mContentType:Ljava/lang/String;

    return-object p0
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lmiui/net/http/a;->_R:Ljava/util/Map;

    return-object p0
.end method

.method public getStatusCode()I
    .locals 0

    iget p0, p0, Lmiui/net/http/a;->mStatusCode:I

    return p0
.end method

.method public release()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lmiui/net/http/a;->gr:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/net/http/a;->gr:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/net/http/a;->gr:Ljava/io/InputStream;

    return-void
.end method
