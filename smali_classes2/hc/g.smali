.class public final Lhc/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lxc/d;

.field private static final b:Lxc/d;

.field public static final c:Lhc/g;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lhc/g;

    .line 2
    .line 3
    invoke-direct {v0}, Lhc/g;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lhc/g;->c:Lhc/g;

    .line 7
    .line 8
    sget-object v0, Lxc/h;->c:Lxc/h;

    .line 9
    .line 10
    sget-object v1, Lhc/g$a;->e:Lhc/g$a;

    .line 11
    .line 12
    invoke-static {v0, v1}, Lxc/e;->b(Lxc/h;Lid/a;)Lxc/d;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    sput-object v1, Lhc/g;->a:Lxc/d;

    .line 17
    .line 18
    sget-object v1, Lhc/g$b;->e:Lhc/g$b;

    .line 19
    .line 20
    invoke-static {v0, v1}, Lxc/e;->b(Lxc/h;Lid/a;)Lxc/d;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    sput-object v0, Lhc/g;->b:Lxc/d;

    .line 25
    .line 26
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lhc/g;)Ljava/lang/Class;
    .locals 0

    .line 1
    invoke-direct {p0}, Lhc/g;->b()Ljava/lang/Class;

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
    sget-object v0, Lhc/g;->a:Lxc/d;

    invoke-interface {v0}, Lxc/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method private final c()Ljava/lang/reflect/Field;
    .locals 1

    .line 1
    sget-object v0, Lhc/g;->b:Lxc/d;

    invoke-interface {v0}, Lxc/d;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

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
    invoke-direct {p0}, Lhc/g;->b()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    sget-object v0, Lhc/g;->c:Lhc/g;

    .line 20
    .line 21
    invoke-direct {v0}, Lhc/g;->c()Ljava/lang/reflect/Field;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    check-cast p1, Landroid/view/Window;

    .line 34
    .line 35
    move-object v1, p1

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 38
    .line 39
    const-string v0, "null cannot be cast to non-null type android.view.Window"

    .line 40
    .line 41
    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw p1

    .line 45
    :cond_1
    :goto_0
    return-object v1
.end method
