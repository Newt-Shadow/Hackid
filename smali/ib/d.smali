.class public final Lib/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnDrawListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lib/d$a;
    }
.end annotation


# static fields
.field public static final e:Lib/d$a;


# instance fields
.field private final a:Landroid/view/View;

.field private final b:Lid/a;

.field private final c:Lid/a;

.field private final d:Lib/i;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lib/d$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lib/d$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lib/d;->e:Lib/d$a;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lgb/b;Llb/g;JLid/a;Lid/a;)V
    .locals 1

    .line 1
    const-string v0, "view"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "mainHandler"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const-string v0, "dateProvider"

    .line 12
    .line 13
    invoke-static {p3, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "onDrawCallback"

    .line 17
    .line 18
    invoke-static {p6, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "onDrawThrottlerCallback"

    .line 22
    .line 23
    invoke-static {p7, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    .line 28
    .line 29
    iput-object p1, p0, Lib/d;->a:Landroid/view/View;

    .line 30
    .line 31
    iput-object p6, p0, Lib/d;->b:Lid/a;

    .line 32
    .line 33
    iput-object p7, p0, Lib/d;->c:Lid/a;

    .line 34
    .line 35
    new-instance p1, Lib/i;

    .line 36
    .line 37
    invoke-direct {p1, p2, p3, p4, p5}, Lib/i;-><init>(Lgb/b;Llb/g;J)V

    .line 38
    .line 39
    .line 40
    iput-object p1, p0, Lib/d;->d:Lib/i;

    .line 41
    .line 42
    return-void
.end method

.method public static synthetic a(Lib/d;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lib/d;->c(Lib/d;)V

    return-void
.end method

.method public static final synthetic b(Lib/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lib/d;->d()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final c(Lib/d;)V
    .locals 1

    .line 1
    const-string v0, "this$0"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lib/d;->c:Lid/a;

    .line 7
    .line 8
    invoke-interface {p0}, Lid/a;->invoke()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private final d()V
    .locals 1

    .line 1
    iget-object v0, p0, Lib/d;->a:Landroid/view/View;

    .line 2
    .line 3
    invoke-static {v0}, Lib/e;->a(Landroid/view/View;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lib/d;->a:Landroid/view/View;

    .line 10
    .line 11
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method


# virtual methods
.method public onDraw()V
    .locals 2

    .line 1
    iget-object v0, p0, Lib/d;->b:Lid/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lid/a;->invoke()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lib/d;->d:Lib/i;

    .line 7
    .line 8
    new-instance v1, Lib/c;

    .line 9
    .line 10
    invoke-direct {v1, p0}, Lib/c;-><init>(Lib/d;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Lib/i;->d(Ljava/lang/Runnable;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
