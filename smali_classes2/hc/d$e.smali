.class public final Lhc/d$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lid/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lhc/d;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhc/d;

.field final synthetic b:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lhc/d;Ljava/util/Iterator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lhc/d$e;->a:Lhc/d;

    .line 2
    .line 3
    iput-object p2, p0, Lhc/d$e;->b:Ljava/util/Iterator;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Landroid/view/MotionEvent;)Lgc/b;
    .locals 2

    .line 1
    const-string v0, "interceptedEvent"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lhc/d$e;->b:Ljava/util/Iterator;

    .line 7
    .line 8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lhc/d$e;->b:Ljava/util/Iterator;

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lgc/e;

    .line 21
    .line 22
    invoke-interface {v0, p1, p0}, Lgc/e;->a(Landroid/view/MotionEvent;Lid/l;)Lgc/b;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    sget-object v0, Lgc/b;->b:Lgc/b$a;

    .line 28
    .line 29
    iget-object v1, p0, Lhc/d$e;->a:Lhc/d;

    .line 30
    .line 31
    invoke-static {v1}, Lhc/d;->b(Lhc/d;)Landroid/view/Window$Callback;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-interface {v1, p1}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    invoke-virtual {v0, p1}, Lgc/b$a;->a(Z)Lgc/b;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    :goto_0
    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/view/MotionEvent;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lhc/d$e;->a(Landroid/view/MotionEvent;)Lgc/b;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method
