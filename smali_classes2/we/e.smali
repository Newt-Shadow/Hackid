.class public final Lwe/e;
.super Lwe/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lwe/e$a;,
        Lwe/e$b;
    }
.end annotation


# static fields
.field public static final i:Lwe/e$b;


# instance fields
.field private final d:Ljava/lang/reflect/Method;

.field private final e:Ljava/lang/reflect/Method;

.field private final f:Ljava/lang/reflect/Method;

.field private final g:Ljava/lang/Class;

.field private final h:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lwe/e$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lwe/e$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lwe/e;->i:Lwe/e$b;

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1

    .line 1
    const-string v0, "putMethod"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "getMethod"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "removeMethod"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "clientProviderClass"

    .line 17
    .line 18
    invoke-static {p4, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "serverProviderClass"

    .line 22
    .line 23
    invoke-static {p5, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Lwe/j;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lwe/e;->d:Ljava/lang/reflect/Method;

    .line 30
    .line 31
    iput-object p2, p0, Lwe/e;->e:Ljava/lang/reflect/Method;

    .line 32
    .line 33
    iput-object p3, p0, Lwe/e;->f:Ljava/lang/reflect/Method;

    .line 34
    .line 35
    iput-object p4, p0, Lwe/e;->g:Ljava/lang/Class;

    .line 36
    .line 37
    iput-object p5, p0, Lwe/e;->h:Ljava/lang/Class;

    .line 38
    .line 39
    return-void
.end method


# virtual methods
.method public b(Ljavax/net/ssl/SSLSocket;)V
    .locals 3

    .line 1
    const-string v0, "failed to remove ALPN"

    .line 2
    .line 3
    const-string v1, "sslSocket"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v1, p0, Lwe/e;->f:Ljava/lang/reflect/Method;

    .line 9
    .line 10
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v1, v2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catch_0
    move-exception p1

    .line 20
    new-instance v1, Ljava/lang/AssertionError;

    .line 21
    .line 22
    invoke-direct {v1, v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    .line 24
    .line 25
    throw v1

    .line 26
    :catch_1
    move-exception p1

    .line 27
    new-instance v1, Ljava/lang/AssertionError;

    .line 28
    .line 29
    invoke-direct {v1, v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    throw v1
.end method

.method public e(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 4

    .line 1
    const-string p2, "failed to set ALPN"

    .line 2
    .line 3
    const-string v0, "sslSocket"

    .line 4
    .line 5
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v0, "protocols"

    .line 9
    .line 10
    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    sget-object v0, Lwe/j;->a:Lwe/j$a;

    .line 14
    .line 15
    invoke-virtual {v0, p3}, Lwe/j$a;->b(Ljava/util/List;)Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object p3

    .line 19
    :try_start_0
    const-class v0, Lwe/j;

    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/4 v1, 0x2

    .line 26
    new-array v1, v1, [Ljava/lang/Class;

    .line 27
    .line 28
    iget-object v2, p0, Lwe/e;->g:Ljava/lang/Class;

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    aput-object v2, v1, v3

    .line 32
    .line 33
    iget-object v2, p0, Lwe/e;->h:Ljava/lang/Class;

    .line 34
    .line 35
    const/4 v3, 0x1

    .line 36
    aput-object v2, v1, v3

    .line 37
    .line 38
    new-instance v2, Lwe/e$a;

    .line 39
    .line 40
    invoke-direct {v2, p3}, Lwe/e$a;-><init>(Ljava/util/List;)V

    .line 41
    .line 42
    .line 43
    invoke-static {v0, v1, v2}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p3

    .line 47
    iget-object v0, p0, Lwe/e;->d:Ljava/lang/reflect/Method;

    .line 48
    .line 49
    filled-new-array {p1, p3}, [Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const/4 p3, 0x0

    .line 54
    invoke-virtual {v0, p3, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 55
    .line 56
    .line 57
    return-void

    .line 58
    :catch_0
    move-exception p1

    .line 59
    new-instance p3, Ljava/lang/AssertionError;

    .line 60
    .line 61
    invoke-direct {p3, p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    .line 63
    .line 64
    throw p3

    .line 65
    :catch_1
    move-exception p1

    .line 66
    new-instance p3, Ljava/lang/AssertionError;

    .line 67
    .line 68
    invoke-direct {p3, p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 69
    .line 70
    .line 71
    throw p3
.end method

.method public g(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 9

    .line 1
    const-string v0, "failed to get ALPN selected protocol"

    .line 2
    .line 3
    const-string v1, "sslSocket"

    .line 4
    .line 5
    invoke-static {p1, v1}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    :try_start_0
    iget-object v1, p0, Lwe/e;->e:Ljava/lang/reflect/Method;

    .line 9
    .line 10
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v1, v2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {p1}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    check-cast p1, Lwe/e$a;

    .line 26
    .line 27
    invoke-virtual {p1}, Lwe/e$a;->b()Z

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_0

    .line 32
    .line 33
    invoke-virtual {p1}, Lwe/e$a;->a()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-nez v1, :cond_0

    .line 38
    .line 39
    const-string v4, "ALPN callback dropped: HTTP/2 is disabled. Is alpn-boot on the boot class path?"

    .line 40
    .line 41
    const/4 v5, 0x0

    .line 42
    const/4 v6, 0x0

    .line 43
    const/4 v7, 0x6

    .line 44
    const/4 v8, 0x0

    .line 45
    move-object v3, p0

    .line 46
    invoke-static/range {v3 .. v8}, Lwe/j;->k(Lwe/j;Ljava/lang/String;ILjava/lang/Throwable;ILjava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    return-object v2

    .line 50
    :cond_0
    invoke-virtual {p1}, Lwe/e$a;->b()Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    invoke-virtual {p1}, Lwe/e$a;->a()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v2

    .line 61
    :goto_0
    return-object v2

    .line 62
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    .line 63
    .line 64
    const-string v1, "null cannot be cast to non-null type okhttp3.internal.platform.Jdk8WithJettyBootPlatform.AlpnProvider"

    .line 65
    .line 66
    invoke-direct {p1, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p1
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :catch_0
    move-exception p1

    .line 71
    new-instance v1, Ljava/lang/AssertionError;

    .line 72
    .line 73
    invoke-direct {v1, v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    .line 75
    .line 76
    throw v1

    .line 77
    :catch_1
    move-exception p1

    .line 78
    new-instance v1, Ljava/lang/AssertionError;

    .line 79
    .line 80
    invoke-direct {v1, v0, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 81
    .line 82
    .line 83
    throw v1
.end method
