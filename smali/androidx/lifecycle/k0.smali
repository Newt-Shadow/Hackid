.class public Landroidx/lifecycle/k0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/k0$a;,
        Landroidx/lifecycle/k0$b;,
        Landroidx/lifecycle/k0$c;,
        Landroidx/lifecycle/k0$d;,
        Landroidx/lifecycle/k0$e;
    }
.end annotation


# static fields
.field public static final b:Landroidx/lifecycle/k0$b;

.field public static final c:Lx0/a$b;


# instance fields
.field private final a:Lx0/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/lifecycle/k0$b;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/lifecycle/k0$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Landroidx/lifecycle/k0;->b:Landroidx/lifecycle/k0$b;

    .line 8
    .line 9
    sget-object v0, Ly0/d$a;->a:Ly0/d$a;

    .line 10
    .line 11
    sput-object v0, Landroidx/lifecycle/k0;->c:Lx0/a$b;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/l0;Landroidx/lifecycle/k0$c;)V
    .locals 7

    .line 1
    const-string v0, "store"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Landroidx/lifecycle/k0;-><init>(Landroidx/lifecycle/l0;Landroidx/lifecycle/k0$c;Lx0/a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/l0;Landroidx/lifecycle/k0$c;Lx0/a;)V
    .locals 1

    const-string v0, "store"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "defaultCreationExtras"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance v0, Lx0/d;

    invoke-direct {v0, p1, p2, p3}, Lx0/d;-><init>(Landroidx/lifecycle/l0;Landroidx/lifecycle/k0$c;Lx0/a;)V

    invoke-direct {p0, v0}, Landroidx/lifecycle/k0;-><init>(Lx0/d;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroidx/lifecycle/l0;Landroidx/lifecycle/k0$c;Lx0/a;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 4
    sget-object p3, Lx0/a$a;->b:Lx0/a$a;

    .line 5
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroidx/lifecycle/k0;-><init>(Landroidx/lifecycle/l0;Landroidx/lifecycle/k0$c;Lx0/a;)V

    return-void
.end method

.method public constructor <init>(Landroidx/lifecycle/m0;Landroidx/lifecycle/k0$c;)V
    .locals 2

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-interface {p1}, Landroidx/lifecycle/m0;->getViewModelStore()Landroidx/lifecycle/l0;

    move-result-object v0

    .line 8
    sget-object v1, Ly0/d;->a:Ly0/d;

    invoke-virtual {v1, p1}, Ly0/d;->a(Landroidx/lifecycle/m0;)Lx0/a;

    move-result-object p1

    .line 9
    invoke-direct {p0, v0, p2, p1}, Landroidx/lifecycle/k0;-><init>(Landroidx/lifecycle/l0;Landroidx/lifecycle/k0$c;Lx0/a;)V

    return-void
.end method

.method private constructor <init>(Lx0/d;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroidx/lifecycle/k0;->a:Lx0/d;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Landroidx/lifecycle/j0;
    .locals 1

    .line 1
    const-string v0, "modelClass"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Lhd/a;->c(Ljava/lang/Class;)Lpd/c;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {p0, p1}, Landroidx/lifecycle/k0;->c(Lpd/c;)Landroidx/lifecycle/j0;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/lang/Class;)Landroidx/lifecycle/j0;
    .locals 1

    .line 1
    const-string v0, "key"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "modelClass"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroidx/lifecycle/k0;->a:Lx0/d;

    .line 12
    .line 13
    invoke-static {p2}, Lhd/a;->c(Ljava/lang/Class;)Lpd/c;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {v0, p2, p1}, Lx0/d;->a(Lpd/c;Ljava/lang/String;)Landroidx/lifecycle/j0;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method public final c(Lpd/c;)Landroidx/lifecycle/j0;
    .locals 3

    .line 1
    const-string v0, "modelClass"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroidx/lifecycle/k0;->a:Lx0/d;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    const/4 v2, 0x2

    .line 10
    invoke-static {v0, p1, v1, v2, v1}, Lx0/d;->b(Lx0/d;Lpd/c;Ljava/lang/String;ILjava/lang/Object;)Landroidx/lifecycle/j0;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method
