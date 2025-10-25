.class public final Lxe/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxe/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lxe/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljavax/net/ssl/SSLSocket;)Z
    .locals 1

    .line 1
    const-string v0, "sslSocket"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    sget-object v0, Lwe/c;->e:Lwe/c$a;

    .line 7
    .line 8
    invoke-virtual {v0}, Lwe/c$a;->b()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    instance-of p1, p1, Lorg/bouncycastle/jsse/BCSSLSocket;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    const/4 p1, 0x1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const/4 p1, 0x0

    .line 21
    :goto_0
    return p1
.end method

.method public c(Ljavax/net/ssl/SSLSocket;)Lxe/m;
    .locals 1

    .line 1
    const-string v0, "sslSocket"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lxe/i;

    .line 7
    .line 8
    invoke-direct {p1}, Lxe/i;-><init>()V

    .line 9
    .line 10
    .line 11
    return-object p1
.end method
