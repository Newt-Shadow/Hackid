.class public final synthetic Lhb/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic b:Lhb/l;

.field public final synthetic c:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic d:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Lhb/l;Ljava/util/concurrent/CountDownLatch;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhb/k;->a:Landroid/view/View;

    iput-object p2, p0, Lhb/k;->b:Lhb/l;

    iput-object p3, p0, Lhb/k;->c:Ljava/util/concurrent/CountDownLatch;

    iput-object p4, p0, Lhb/k;->d:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lhb/k;->a:Landroid/view/View;

    iget-object v1, p0, Lhb/k;->b:Lhb/l;

    iget-object v2, p0, Lhb/k;->c:Ljava/util/concurrent/CountDownLatch;

    iget-object v3, p0, Lhb/k;->d:Ljava/util/List;

    invoke-static {v0, v1, v2, v3}, Lhb/l;->d(Landroid/view/View;Lhb/l;Ljava/util/concurrent/CountDownLatch;Ljava/util/List;)V

    return-void
.end method
