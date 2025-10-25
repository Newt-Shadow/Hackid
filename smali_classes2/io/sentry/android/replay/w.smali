.class public final Lio/sentry/android/replay/w;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lio/sentry/android/replay/w;

.field private static final b:Lxc/d;

.field private static final c:Lxc/d;

.field private static final d:Lxc/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lio/sentry/android/replay/w;

    .line 2
    .line 3
    invoke-direct {v0}, Lio/sentry/android/replay/w;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lio/sentry/android/replay/w;->a:Lio/sentry/android/replay/w;

    .line 7
    .line 8
    sget-object v0, Lxc/h;->c:Lxc/h;

    .line 9
    .line 10
    sget-object v1, Lio/sentry/android/replay/w$b;->e:Lio/sentry/android/replay/w$b;

    .line 11
    .line 12
    invoke-static {v0, v1}, Lxc/e;->b(Lxc/h;Lid/a;)Lxc/d;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    sput-object v1, Lio/sentry/android/replay/w;->b:Lxc/d;

    .line 17
    .line 18
    sget-object v1, Lio/sentry/android/replay/w$c;->e:Lio/sentry/android/replay/w$c;

    .line 19
    .line 20
    invoke-static {v0, v1}, Lxc/e;->b(Lxc/h;Lid/a;)Lxc/d;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    sput-object v1, Lio/sentry/android/replay/w;->c:Lxc/d;

    .line 25
    .line 26
    sget-object v1, Lio/sentry/android/replay/w$a;->e:Lio/sentry/android/replay/w$a;

    .line 27
    .line 28
    invoke-static {v0, v1}, Lxc/e;->b(Lxc/h;Lid/a;)Lxc/d;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    sput-object v0, Lio/sentry/android/replay/w;->d:Lxc/d;

    .line 33
    .line 34
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lio/sentry/android/replay/w;)Ljava/lang/Class;
    .locals 0

    .line 1
    invoke-direct {p0}, Lio/sentry/android/replay/w;->c()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final b()Ljava/lang/reflect/Field;
    .locals 1

    .line 1
    sget-object v0, Lio/sentry/android/replay/w;->d:Lxc/d;

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

.method private final c()Ljava/lang/Class;
    .locals 1

    .line 1
    sget-object v0, Lio/sentry/android/replay/w;->b:Lxc/d;

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

.method private final d()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lio/sentry/android/replay/w;->c:Lxc/d;

    .line 2
    .line 3
    invoke-interface {v0}, Lxc/d;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method


# virtual methods
.method public final e(Lid/l;)V
    .locals 4

    .line 1
    const-string v0, "swap"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    invoke-direct {p0}, Lio/sentry/android/replay/w;->d()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    sget-object v1, Lio/sentry/android/replay/w;->a:Lio/sentry/android/replay/w;

    .line 13
    .line 14
    invoke-direct {v1}, Lio/sentry/android/replay/w;->b()Ljava/lang/reflect/Field;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    const-string v3, "null cannot be cast to non-null type java.util.ArrayList<android.view.View>{ kotlin.collections.TypeAliasesKt.ArrayList<android.view.View> }"

    .line 25
    .line 26
    invoke-static {v2, v3}, Lkotlin/jvm/internal/m;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    check-cast v2, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-interface {p1, v2}, Lid/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {v1, v0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    const-string v0, "WindowManagerSpy"

    .line 41
    .line 42
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 43
    .line 44
    .line 45
    :cond_0
    :goto_0
    return-void
.end method
