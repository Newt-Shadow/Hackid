.class public final Lgc/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lgc/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lgc/f;->d(Landroid/view/Window;Lid/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhc/e;

.field final synthetic b:Landroid/view/Window;

.field final synthetic c:Lid/l;


# direct methods
.method constructor <init>(Lhc/e;Landroid/view/Window;Lid/l;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lgc/f$a;->a:Lhc/e;

    .line 2
    .line 3
    iput-object p2, p0, Lgc/f$a;->b:Landroid/view/Window;

    .line 4
    .line 5
    iput-object p3, p0, Lgc/f$a;->c:Lid/l;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onContentChanged()V
    .locals 3

    .line 1
    iget-object v0, p0, Lgc/f$a;->a:Lhc/e;

    .line 2
    .line 3
    invoke-virtual {v0}, Lhc/e;->b()Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0, p0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lgc/f$a;->c:Lid/l;

    .line 11
    .line 12
    iget-object v1, p0, Lgc/f$a;->b:Landroid/view/Window;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-string v2, "peekDecorView()"

    .line 19
    .line 20
    invoke-static {v1, v2}, Lkotlin/jvm/internal/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-interface {v0, v1}, Lid/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    return-void
.end method
