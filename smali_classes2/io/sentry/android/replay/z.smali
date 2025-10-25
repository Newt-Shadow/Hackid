.class public final Lio/sentry/android/replay/z;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lio/sentry/android/replay/z;

.field private static final b:Lxc/d;

.field private static final c:Lxc/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lio/sentry/android/replay/z;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/sentry/android/replay/z;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/sentry/android/replay/z;->a:Lio/sentry/android/replay/z;

    .line 7
    .line 8
    sget-object v0, Lxc/h;->c:Lxc/h;

    .line 9
    .line 10
    sget-object v1, Lio/sentry/android/replay/z$a;->e:Lio/sentry/android/replay/z$a;

    .line 11
    .line 12
    invoke-static {v0, v1}, Lxc/e;->b(Lxc/h;Lid/a;)Lxc/d;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    sput-object v1, Lio/sentry/android/replay/z;->b:Lxc/d;

    .line 17
    .line 18
    sget-object v1, Lio/sentry/android/replay/z$b;->e:Lio/sentry/android/replay/z$b;

    .line 19
    .line 20
    invoke-static {v0, v1}, Lxc/e;->b(Lxc/h;Lid/a;)Lxc/d;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Lio/sentry/android/replay/z;->c:Lxc/d;

    .line 25
    .line 26
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lio/sentry/android/replay/z;)Ljava/lang/Class;
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/sentry/android/replay/z;->b()Ljava/lang/Class;

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
    sget-object v0, Lio/sentry/android/replay/z;->b:Lxc/d;

    .line 2
    .line 3
    invoke-interface {v0}, Lxc/d;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/Class;

    .line 8
    .line 9
    return-object v0
.end method

.method private final c()Ljava/lang/reflect/Field;
    .locals 1

    .line 1
    sget-object v0, Lio/sentry/android/replay/z;->c:Lxc/d;

    .line 2
    .line 3
    invoke-interface {v0}, Lxc/d;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/reflect/Field;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final d(Landroid/view/View;)Landroid/view/Window;
    .locals 2

    .line 1
    const-string v0, "maybeDecorView"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lio/sentry/android/replay/z;->b()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    sget-object v0, Lio/sentry/android/replay/z;->a:Lio/sentry/android/replay/z;

    .line 20
    .line 21
    invoke-direct {v0}, Lio/sentry/android/replay/z;->c()Ljava/lang/reflect/Field;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    const-string v0, "null cannot be cast to non-null type android.view.Window"

    .line 32
    .line 33
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    check-cast p1, Landroid/view/Window;

    .line 37
    .line 38
    move-object v1, p1

    .line 39
    :cond_0
    return-object v1
.end method
