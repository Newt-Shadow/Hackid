.class public abstract Landroidx/appcompat/app/g;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/g$b;,
        Landroidx/appcompat/app/g$a;
    }
.end annotation


# static fields
.field static a:Landroidx/appcompat/app/v$a;

.field private static b:I

.field private static c:Lz/i;

.field private static d:Lz/i;

.field private static e:Ljava/lang/Boolean;

.field private static f:Z

.field private static final g:Lr/b;

.field private static final h:Ljava/lang/Object;

.field private static final i:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/appcompat/app/v$a;

    .line 2
    .line 3
    new-instance v1, Landroidx/appcompat/app/v$b;

    .line 4
    .line 5
    invoke-direct {v1}, Landroidx/appcompat/app/v$b;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Landroidx/appcompat/app/v$a;-><init>(Ljava/util/concurrent/Executor;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Landroidx/appcompat/app/g;->a:Landroidx/appcompat/app/v$a;

    .line 12
    .line 13
    const/16 v0, -0x64

    .line 14
    .line 15
    sput v0, Landroidx/appcompat/app/g;->b:I

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    sput-object v0, Landroidx/appcompat/app/g;->c:Lz/i;

    .line 19
    .line 20
    sput-object v0, Landroidx/appcompat/app/g;->d:Lz/i;

    .line 21
    .line 22
    sput-object v0, Landroidx/appcompat/app/g;->e:Ljava/lang/Boolean;

    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    sput-boolean v0, Landroidx/appcompat/app/g;->f:Z

    .line 26
    .line 27
    new-instance v0, Lr/b;

    .line 28
    .line 29
    invoke-direct {v0}, Lr/b;-><init>()V

    .line 30
    .line 31
    .line 32
    sput-object v0, Landroidx/appcompat/app/g;->g:Lr/b;

    .line 33
    .line 34
    new-instance v0, Ljava/lang/Object;

    .line 35
    .line 36
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 37
    .line 38
    .line 39
    sput-object v0, Landroidx/appcompat/app/g;->h:Ljava/lang/Object;

    .line 40
    .line 41
    new-instance v0, Ljava/lang/Object;

    .line 42
    .line 43
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 44
    .line 45
    .line 46
    sput-object v0, Landroidx/appcompat/app/g;->i:Ljava/lang/Object;

    .line 47
    .line 48
    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static F(Landroidx/appcompat/app/g;)V
    .locals 1

    .line 1
    sget-object v0, Landroidx/appcompat/app/g;->h:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p0}, Landroidx/appcompat/app/g;->G(Landroidx/appcompat/app/g;)V

    .line 5
    .line 6
    .line 7
    monitor-exit v0

    .line 8
    return-void

    .line 9
    :catchall_0
    move-exception p0

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    throw p0
.end method

.method private static G(Landroidx/appcompat/app/g;)V
    .locals 3

    .line 1
    sget-object v0, Landroidx/appcompat/app/g;->h:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Landroidx/appcompat/app/g;->g:Lr/b;

    .line 5
    .line 6
    invoke-virtual {v1}, Lr/b;->iterator()Ljava/util/Iterator;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-eqz v2, :cond_2

    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    check-cast v2, Landroidx/appcompat/app/g;

    .line 27
    .line 28
    if-eq v2, p0, :cond_1

    .line 29
    .line 30
    if-nez v2, :cond_0

    .line 31
    .line 32
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_2
    monitor-exit v0

    .line 37
    return-void

    .line 38
    :catchall_0
    move-exception p0

    .line 39
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    throw p0
.end method

.method static Q(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-static {p0}, Landroidx/appcompat/app/g;->v(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {}, Lz/a;->b()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    sget-boolean v0, Landroidx/appcompat/app/g;->f:Z

    .line 15
    .line 16
    if-nez v0, :cond_6

    .line 17
    .line 18
    sget-object v0, Landroidx/appcompat/app/g;->a:Landroidx/appcompat/app/v$a;

    .line 19
    .line 20
    new-instance v1, Landroidx/appcompat/app/f;

    .line 21
    .line 22
    invoke-direct {v1, p0}, Landroidx/appcompat/app/f;-><init>(Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroidx/appcompat/app/v$a;->execute(Ljava/lang/Runnable;)V

    .line 26
    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    sget-object v0, Landroidx/appcompat/app/g;->i:Ljava/lang/Object;

    .line 30
    .line 31
    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Landroidx/appcompat/app/g;->c:Lz/i;

    .line 33
    .line 34
    if-nez v1, :cond_4

    .line 35
    .line 36
    sget-object v1, Landroidx/appcompat/app/g;->d:Lz/i;

    .line 37
    .line 38
    if-nez v1, :cond_2

    .line 39
    .line 40
    invoke-static {p0}, Landroidx/appcompat/app/v;->b(Landroid/content/Context;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-static {p0}, Lz/i;->b(Ljava/lang/String;)Lz/i;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    sput-object p0, Landroidx/appcompat/app/g;->d:Lz/i;

    .line 49
    .line 50
    :cond_2
    sget-object p0, Landroidx/appcompat/app/g;->d:Lz/i;

    .line 51
    .line 52
    invoke-virtual {p0}, Lz/i;->e()Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    if-eqz p0, :cond_3

    .line 57
    .line 58
    monitor-exit v0

    .line 59
    return-void

    .line 60
    :cond_3
    sget-object p0, Landroidx/appcompat/app/g;->d:Lz/i;

    .line 61
    .line 62
    sput-object p0, Landroidx/appcompat/app/g;->c:Lz/i;

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_4
    sget-object v2, Landroidx/appcompat/app/g;->d:Lz/i;

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Lz/i;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-nez v1, :cond_5

    .line 72
    .line 73
    sget-object v1, Landroidx/appcompat/app/g;->c:Lz/i;

    .line 74
    .line 75
    sput-object v1, Landroidx/appcompat/app/g;->d:Lz/i;

    .line 76
    .line 77
    invoke-virtual {v1}, Lz/i;->g()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-static {p0, v1}, Landroidx/appcompat/app/v;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    :cond_5
    :goto_0
    monitor-exit v0

    .line 85
    :cond_6
    :goto_1
    return-void

    .line 86
    :catchall_0
    move-exception p0

    .line 87
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    throw p0
.end method

.method public static synthetic c(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/appcompat/app/g;->w(Landroid/content/Context;)V

    return-void
.end method

.method static d(Landroidx/appcompat/app/g;)V
    .locals 3

    .line 1
    sget-object v0, Landroidx/appcompat/app/g;->h:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {p0}, Landroidx/appcompat/app/g;->G(Landroidx/appcompat/app/g;)V

    .line 5
    .line 6
    .line 7
    sget-object v1, Landroidx/appcompat/app/g;->g:Lr/b;

    .line 8
    .line 9
    new-instance v2, Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    invoke-direct {v2, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v2}, Lr/b;->add(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    throw p0
.end method

.method public static h(Landroid/app/Activity;Landroidx/appcompat/app/e;)Landroidx/appcompat/app/g;
    .locals 1

    .line 1
    new-instance v0, Landroidx/appcompat/app/h;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Landroidx/appcompat/app/h;-><init>(Landroid/app/Activity;Landroidx/appcompat/app/e;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static i(Landroid/app/Dialog;Landroidx/appcompat/app/e;)Landroidx/appcompat/app/g;
    .locals 1

    .line 1
    new-instance v0, Landroidx/appcompat/app/h;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Landroidx/appcompat/app/h;-><init>(Landroid/app/Dialog;Landroidx/appcompat/app/e;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static k()Lz/i;
    .locals 1

    .line 1
    invoke-static {}, Lz/a;->b()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Landroidx/appcompat/app/g;->p()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-static {v0}, Landroidx/appcompat/app/g$b;->a(Ljava/lang/Object;)Landroid/os/LocaleList;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v0}, Lz/i;->h(Landroid/os/LocaleList;)Lz/i;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    :cond_0
    sget-object v0, Landroidx/appcompat/app/g;->c:Lz/i;

    .line 23
    .line 24
    if-eqz v0, :cond_1

    .line 25
    .line 26
    return-object v0

    .line 27
    :cond_1
    invoke-static {}, Lz/i;->d()Lz/i;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    return-object v0
.end method

.method public static m()I
    .locals 1

    .line 1
    sget v0, Landroidx/appcompat/app/g;->b:I

    .line 2
    .line 3
    return v0
.end method

.method static p()Ljava/lang/Object;
    .locals 2

    .line 1
    sget-object v0, Landroidx/appcompat/app/g;->g:Lr/b;

    .line 2
    .line 3
    invoke-virtual {v0}, Lr/b;->iterator()Ljava/util/Iterator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Landroidx/appcompat/app/g;

    .line 24
    .line 25
    if-eqz v1, :cond_0

    .line 26
    .line 27
    invoke-virtual {v1}, Landroidx/appcompat/app/g;->l()Landroid/content/Context;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    .line 33
    const-string v0, "locale"

    .line 34
    .line 35
    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    return-object v0

    .line 40
    :cond_1
    const/4 v0, 0x0

    .line 41
    return-object v0
.end method

.method static r()Lz/i;
    .locals 1

    .line 1
    sget-object v0, Landroidx/appcompat/app/g;->c:Lz/i;

    .line 2
    .line 3
    return-object v0
.end method

.method static v(Landroid/content/Context;)Z
    .locals 1

    .line 1
    sget-object v0, Landroidx/appcompat/app/g;->e:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-static {p0}, Landroidx/appcompat/app/t;->a(Landroid/content/Context;)Landroid/content/pm/ServiceInfo;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    .line 10
    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    const-string v0, "autoStoreLocales"

    .line 14
    .line 15
    invoke-virtual {p0, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    sput-object p0, Landroidx/appcompat/app/g;->e:Ljava/lang/Boolean;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    const-string p0, "AppCompatDelegate"

    .line 27
    .line 28
    const-string v0, "Checking for metadata for AppLocalesMetadataHolderService : Service not found"

    .line 29
    .line 30
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 34
    .line 35
    sput-object p0, Landroidx/appcompat/app/g;->e:Ljava/lang/Boolean;

    .line 36
    .line 37
    :cond_0
    :goto_0
    sget-object p0, Landroidx/appcompat/app/g;->e:Ljava/lang/Boolean;

    .line 38
    .line 39
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 40
    .line 41
    .line 42
    move-result p0

    .line 43
    return p0
.end method

.method private static synthetic w(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Landroidx/appcompat/app/v;->c(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 p0, 0x1

    .line 5
    sput-boolean p0, Landroidx/appcompat/app/g;->f:Z

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public abstract A(Landroid/os/Bundle;)V
.end method

.method public abstract B()V
.end method

.method public abstract C(Landroid/os/Bundle;)V
.end method

.method public abstract D()V
.end method

.method public abstract E()V
.end method

.method public abstract H(I)Z
.end method

.method public abstract I(I)V
.end method

.method public abstract J(Landroid/view/View;)V
.end method

.method public abstract K(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public L(Landroid/window/OnBackInvokedDispatcher;)V
    .locals 0

    .line 1
    return-void
.end method

.method public abstract M(Landroidx/appcompat/widget/Toolbar;)V
.end method

.method public abstract N(I)V
.end method

.method public abstract O(Ljava/lang/CharSequence;)V
.end method

.method public abstract P(Landroidx/appcompat/view/b$a;)Landroidx/appcompat/view/b;
.end method

.method public abstract e(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method public f(Landroid/content/Context;)V
    .locals 0

    .line 1
    return-void
.end method

.method public g(Landroid/content/Context;)Landroid/content/Context;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/g;->f(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-object p1
.end method

.method public abstract j(I)Landroid/view/View;
.end method

.method public abstract l()Landroid/content/Context;
.end method

.method public abstract n()Landroidx/appcompat/app/b;
.end method

.method public abstract o()I
.end method

.method public abstract q()Landroid/view/MenuInflater;
.end method

.method public abstract s()Landroidx/appcompat/app/a;
.end method

.method public abstract t()V
.end method

.method public abstract u()V
.end method

.method public abstract x(Landroid/content/res/Configuration;)V
.end method

.method public abstract y(Landroid/os/Bundle;)V
.end method

.method public abstract z()V
.end method
