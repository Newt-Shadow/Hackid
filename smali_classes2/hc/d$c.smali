.class public final Lhc/d$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhc/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lhc/d$c;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lhc/d$c;)Ljava/lang/Class;
    .locals 0

    .line 1
    invoke-direct {p0}, Lhc/d$c;->b()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final b()Ljava/lang/Class;
    .locals 1

    .line 1
    invoke-static {}, Lhc/d;->c()Lxc/d;

    move-result-object v0

    invoke-interface {v0}, Lxc/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method


# virtual methods
.method public final c(Landroid/view/Window;)Lhc/e;
    .locals 4

    .line 1
    const-string v0, "$this$listeners"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lhc/d;->e()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    monitor-enter v0

    .line 11
    :try_start_0
    invoke-static {}, Lhc/d;->a()Ljava/util/WeakHashMap;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 20
    .line 21
    if-eqz v1, :cond_0

    .line 22
    .line 23
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lhc/d;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v1, 0x0

    .line 31
    :goto_0
    if-eqz v1, :cond_1

    .line 32
    .line 33
    invoke-static {v1}, Lhc/d;->d(Lhc/d;)Lhc/e;

    .line 34
    .line 35
    .line 36
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    monitor-exit v0

    .line 38
    return-object p1

    .line 39
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-nez v1, :cond_2

    .line 44
    .line 45
    new-instance p1, Lhc/e;

    .line 46
    .line 47
    invoke-direct {p1}, Lhc/e;-><init>()V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_2
    new-instance v2, Lhc/d;

    .line 52
    .line 53
    invoke-direct {v2, v1}, Lhc/d;-><init>(Landroid/view/Window$Callback;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v2}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 57
    .line 58
    .line 59
    invoke-static {}, Lhc/d;->a()Ljava/util/WeakHashMap;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    new-instance v3, Ljava/lang/ref/WeakReference;

    .line 64
    .line 65
    invoke-direct {v3, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    invoke-interface {v1, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    invoke-static {v2}, Lhc/d;->d(Lhc/d;)Lhc/e;

    .line 72
    .line 73
    .line 74
    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    :goto_1
    monitor-exit v0

    .line 76
    return-object p1

    .line 77
    :catchall_0
    move-exception p1

    .line 78
    monitor-exit v0

    .line 79
    throw p1
.end method
