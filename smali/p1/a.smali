.class public final Lp1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Ljava/lang/ClassLoader;)V
    .locals 1

    .line 1
    const-string v0, "loader"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lp1/a;->a:Ljava/lang/ClassLoader;

    .line 10
    .line 11
    return-void
.end method

.method public static final synthetic a(Lp1/a;)Ljava/lang/ClassLoader;
    .locals 0

    .line 1
    iget-object p0, p0, Lp1/a;->a:Ljava/lang/ClassLoader;

    .line 2
    .line 3
    return-object p0
.end method

.method public static final synthetic b(Lp1/a;)Ljava/lang/Class;
    .locals 0

    .line 1
    invoke-direct {p0}, Lp1/a;->d()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final d()Ljava/lang/Class;
    .locals 2

    .line 1
    iget-object v0, p0, Lp1/a;->a:Ljava/lang/ClassLoader;

    .line 2
    .line 3
    const-string v1, "androidx.window.extensions.WindowExtensionsProvider"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "loader.loadClass(WindowE\u2026XTENSIONS_PROVIDER_CLASS)"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method private final e()Z
    .locals 2

    .line 1
    sget-object v0, Ly1/a;->a:Ly1/a;

    .line 2
    .line 3
    new-instance v1, Lp1/a$a;

    .line 4
    .line 5
    invoke-direct {v1, p0}, Lp1/a$a;-><init>(Lp1/a;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ly1/a;->a(Lid/a;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method


# virtual methods
.method public final c()Ljava/lang/Class;
    .locals 2

    .line 1
    iget-object v0, p0, Lp1/a;->a:Ljava/lang/ClassLoader;

    .line 2
    .line 3
    const-string v1, "androidx.window.extensions.WindowExtensions"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "loader.loadClass(WindowE\u2026.WINDOW_EXTENSIONS_CLASS)"

    .line 10
    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-object v0
.end method

.method public final f()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lp1/a;->e()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Lp1/a$b;

    .line 8
    .line 9
    invoke-direct {v0, p0}, Lp1/a$b;-><init>(Lp1/a;)V

    .line 10
    .line 11
    .line 12
    const-string v1, "WindowExtensionsProvider#getWindowExtensions is not valid"

    .line 13
    .line 14
    invoke-static {v1, v0}, Ly1/a;->e(Ljava/lang/String;Lid/a;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    :goto_0
    return v0
.end method
