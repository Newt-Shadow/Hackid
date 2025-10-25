.class public final synthetic Lhb/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/PixelCopy$OnPixelCopyFinishedListener;


# instance fields
.field public final synthetic a:Lhb/l;

.field public final synthetic b:Landroid/graphics/Bitmap;

.field public final synthetic c:Lkotlin/jvm/internal/z;

.field public final synthetic d:Landroid/view/View;

.field public final synthetic e:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Lhb/l;Landroid/graphics/Bitmap;Lkotlin/jvm/internal/z;Landroid/view/View;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhb/j;->a:Lhb/l;

    iput-object p2, p0, Lhb/j;->b:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lhb/j;->c:Lkotlin/jvm/internal/z;

    iput-object p4, p0, Lhb/j;->d:Landroid/view/View;

    iput-object p5, p0, Lhb/j;->e:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public final onPixelCopyFinished(I)V
    .locals 6

    .line 1
    iget-object v0, p0, Lhb/j;->a:Lhb/l;

    iget-object v1, p0, Lhb/j;->b:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lhb/j;->c:Lkotlin/jvm/internal/z;

    iget-object v3, p0, Lhb/j;->d:Landroid/view/View;

    iget-object v4, p0, Lhb/j;->e:Ljava/util/concurrent/CountDownLatch;

    move v5, p1

    invoke-static/range {v0 .. v5}, Lhb/l;->g(Lhb/l;Landroid/graphics/Bitmap;Lkotlin/jvm/internal/z;Landroid/view/View;Ljava/util/concurrent/CountDownLatch;I)V

    return-void
.end method
