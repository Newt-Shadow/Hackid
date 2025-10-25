.class Lcom/journeyapps/barcodescanner/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxa/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/journeyapps/barcodescanner/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/journeyapps/barcodescanner/e;


# direct methods
.method constructor <init>(Lcom/journeyapps/barcodescanner/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/e$a;->a:Lcom/journeyapps/barcodescanner/e;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic c(Lcom/journeyapps/barcodescanner/e$a;Lxa/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/journeyapps/barcodescanner/e$a;->d(Lxa/b;)V

    return-void
.end method

.method private synthetic d(Lxa/b;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/e$a;->a:Lcom/journeyapps/barcodescanner/e;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/journeyapps/barcodescanner/e;->B(Lxa/b;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lxa/b;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/e$a;->a:Lcom/journeyapps/barcodescanner/e;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/journeyapps/barcodescanner/e;->d(Lcom/journeyapps/barcodescanner/e;)Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lcom/journeyapps/barcodescanner/DecoratedBarcodeView;->e()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/e$a;->a:Lcom/journeyapps/barcodescanner/e;

    .line 11
    .line 12
    invoke-static {v0}, Lcom/journeyapps/barcodescanner/e;->e(Lcom/journeyapps/barcodescanner/e;)Lh9/e;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Lh9/e;->f()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/e$a;->a:Lcom/journeyapps/barcodescanner/e;

    .line 20
    .line 21
    invoke-static {v0}, Lcom/journeyapps/barcodescanner/e;->f(Lcom/journeyapps/barcodescanner/e;)Landroid/os/Handler;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    new-instance v1, Lcom/journeyapps/barcodescanner/d;

    .line 26
    .line 27
    invoke-direct {v1, p0, p1}, Lcom/journeyapps/barcodescanner/d;-><init>(Lcom/journeyapps/barcodescanner/e$a;Lxa/b;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 0

    .line 1
    return-void
.end method
