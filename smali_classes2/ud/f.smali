.class public abstract Lud/f;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lud/e;

.field private static volatile choreographer:Landroid/view/Choreographer;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lxc/l;->b:Lxc/l$a;

    .line 3
    .line 4
    new-instance v1, Lud/d;

    .line 5
    .line 6
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    const/4 v3, 0x1

    .line 11
    invoke-static {v2, v3}, Lud/f;->a(Landroid/os/Looper;Z)Landroid/os/Handler;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    const/4 v3, 0x2

    .line 16
    invoke-direct {v1, v2, v0, v3, v0}, Lud/d;-><init>(Landroid/os/Handler;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v1}, Lxc/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    goto :goto_0

    .line 24
    :catchall_0
    move-exception v1

    .line 25
    sget-object v2, Lxc/l;->b:Lxc/l$a;

    .line 26
    .line 27
    invoke-static {v1}, Lxc/m;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-static {v1}, Lxc/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    :goto_0
    invoke-static {v1}, Lxc/l;->f(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    move-result v2

    .line 39
    if-eqz v2, :cond_0

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :cond_0
    move-object v0, v1

    .line 43
    :goto_1
    check-cast v0, Lud/e;

    .line 44
    .line 45
    sput-object v0, Lud/f;->a:Lud/e;

    .line 46
    .line 47
    return-void
.end method

.method public static final a(Landroid/os/Looper;Z)Landroid/os/Handler;
    .locals 4

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 4
    .line 5
    const/16 v0, 0x1c

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    const-class v2, Landroid/os/Looper;

    .line 9
    .line 10
    const-class v3, Landroid/os/Handler;

    .line 11
    .line 12
    if-lt p1, v0, :cond_0

    .line 13
    .line 14
    const-string p1, "createAsync"

    .line 15
    .line 16
    filled-new-array {v2}, [Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v3, p1, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    invoke-virtual {p1, v1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    const-string p1, "null cannot be cast to non-null type android.os.Handler"

    .line 33
    .line 34
    invoke-static {p0, p1}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    check-cast p0, Landroid/os/Handler;

    .line 38
    .line 39
    return-object p0

    .line 40
    :cond_0
    const/4 p1, 0x3

    .line 41
    :try_start_0
    new-array p1, p1, [Ljava/lang/Class;

    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    aput-object v2, p1, v0

    .line 45
    .line 46
    const-class v0, Landroid/os/Handler$Callback;

    .line 47
    .line 48
    const/4 v2, 0x1

    .line 49
    aput-object v0, p1, v2

    .line 50
    .line 51
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 52
    .line 53
    const/4 v2, 0x2

    .line 54
    aput-object v0, p1, v2

    .line 55
    .line 56
    invoke-virtual {v3, p1}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 57
    .line 58
    .line 59
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 61
    .line 62
    filled-new-array {p0, v1, v0}, [Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    check-cast p0, Landroid/os/Handler;

    .line 71
    .line 72
    return-object p0

    .line 73
    :catch_0
    new-instance p1, Landroid/os/Handler;

    .line 74
    .line 75
    invoke-direct {p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 76
    .line 77
    .line 78
    return-object p1

    .line 79
    :cond_1
    new-instance p1, Landroid/os/Handler;

    .line 80
    .line 81
    invoke-direct {p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 82
    .line 83
    .line 84
    return-object p1
.end method
