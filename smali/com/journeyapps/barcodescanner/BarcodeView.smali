.class public Lcom/journeyapps/barcodescanner/BarcodeView;
.super Lcom/journeyapps/barcodescanner/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/journeyapps/barcodescanner/BarcodeView$b;
    }
.end annotation


# instance fields
.field private B:Lcom/journeyapps/barcodescanner/BarcodeView$b;

.field private C:Lxa/a;

.field private D:Lxa/i;

.field private E:Lxa/g;

.field private F:Landroid/os/Handler;

.field private final G:Landroid/os/Handler$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/journeyapps/barcodescanner/a;-><init>(Landroid/content/Context;)V

    .line 2
    sget-object p1, Lcom/journeyapps/barcodescanner/BarcodeView$b;->a:Lcom/journeyapps/barcodescanner/BarcodeView$b;

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->B:Lcom/journeyapps/barcodescanner/BarcodeView$b;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->C:Lxa/a;

    .line 4
    new-instance p1, Lcom/journeyapps/barcodescanner/BarcodeView$a;

    invoke-direct {p1, p0}, Lcom/journeyapps/barcodescanner/BarcodeView$a;-><init>(Lcom/journeyapps/barcodescanner/BarcodeView;)V

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->G:Landroid/os/Handler$Callback;

    .line 5
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->K()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Lcom/journeyapps/barcodescanner/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 7
    sget-object p1, Lcom/journeyapps/barcodescanner/BarcodeView$b;->a:Lcom/journeyapps/barcodescanner/BarcodeView$b;

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->B:Lcom/journeyapps/barcodescanner/BarcodeView$b;

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->C:Lxa/a;

    .line 9
    new-instance p1, Lcom/journeyapps/barcodescanner/BarcodeView$a;

    invoke-direct {p1, p0}, Lcom/journeyapps/barcodescanner/BarcodeView$a;-><init>(Lcom/journeyapps/barcodescanner/BarcodeView;)V

    iput-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->G:Landroid/os/Handler$Callback;

    .line 10
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->K()V

    return-void
.end method

.method static synthetic E(Lcom/journeyapps/barcodescanner/BarcodeView;)Lxa/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->C:Lxa/a;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic F(Lcom/journeyapps/barcodescanner/BarcodeView;)Lcom/journeyapps/barcodescanner/BarcodeView$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->B:Lcom/journeyapps/barcodescanner/BarcodeView$b;

    .line 2
    .line 3
    return-object p0
.end method

.method private G()Lxa/f;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->E:Lxa/g;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->H()Lxa/g;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->E:Lxa/g;

    .line 10
    .line 11
    :cond_0
    new-instance v0, Lxa/h;

    .line 12
    .line 13
    invoke-direct {v0}, Lxa/h;-><init>()V

    .line 14
    .line 15
    .line 16
    new-instance v1, Ljava/util/HashMap;

    .line 17
    .line 18
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 19
    .line 20
    .line 21
    sget-object v2, Ld9/e;->k:Ld9/e;

    .line 22
    .line 23
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->E:Lxa/g;

    .line 27
    .line 28
    invoke-interface {v2, v1}, Lxa/g;->a(Ljava/util/Map;)Lxa/f;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Lxa/h;->b(Lxa/f;)V

    .line 33
    .line 34
    .line 35
    return-object v1
.end method

.method private K()V
    .locals 2

    .line 1
    new-instance v0, Lxa/j;

    .line 2
    .line 3
    invoke-direct {v0}, Lxa/j;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->E:Lxa/g;

    .line 7
    .line 8
    new-instance v0, Landroid/os/Handler;

    .line 9
    .line 10
    iget-object v1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->G:Landroid/os/Handler$Callback;

    .line 11
    .line 12
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->F:Landroid/os/Handler;

    .line 16
    .line 17
    return-void
.end method

.method private L()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->M()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->B:Lcom/journeyapps/barcodescanner/BarcodeView$b;

    .line 5
    .line 6
    sget-object v1, Lcom/journeyapps/barcodescanner/BarcodeView$b;->a:Lcom/journeyapps/barcodescanner/BarcodeView$b;

    .line 7
    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/a;->t()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    new-instance v0, Lxa/i;

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/a;->getCameraInstance()Lya/g;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->G()Lxa/f;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    iget-object v3, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->F:Landroid/os/Handler;

    .line 27
    .line 28
    invoke-direct {v0, v1, v2, v3}, Lxa/i;-><init>(Lya/g;Lxa/f;Landroid/os/Handler;)V

    .line 29
    .line 30
    .line 31
    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->D:Lxa/i;

    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/journeyapps/barcodescanner/a;->getPreviewFramingRect()Landroid/graphics/Rect;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Lxa/i;->i(Landroid/graphics/Rect;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->D:Lxa/i;

    .line 41
    .line 42
    invoke-virtual {v0}, Lxa/i;->k()V

    .line 43
    .line 44
    .line 45
    :cond_0
    return-void
.end method

.method private M()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->D:Lxa/i;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lxa/i;->l()V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->D:Lxa/i;

    .line 10
    .line 11
    :cond_0
    return-void
.end method


# virtual methods
.method protected H()Lxa/g;
    .locals 1

    .line 1
    new-instance v0, Lxa/j;

    .line 2
    .line 3
    invoke-direct {v0}, Lxa/j;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public I(Lxa/a;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/journeyapps/barcodescanner/BarcodeView$b;->c:Lcom/journeyapps/barcodescanner/BarcodeView$b;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->B:Lcom/journeyapps/barcodescanner/BarcodeView$b;

    .line 4
    .line 5
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->C:Lxa/a;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->L()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public J(Lxa/a;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/journeyapps/barcodescanner/BarcodeView$b;->b:Lcom/journeyapps/barcodescanner/BarcodeView$b;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->B:Lcom/journeyapps/barcodescanner/BarcodeView$b;

    .line 4
    .line 5
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->C:Lxa/a;

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->L()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public N()V
    .locals 1

    .line 1
    sget-object v0, Lcom/journeyapps/barcodescanner/BarcodeView$b;->a:Lcom/journeyapps/barcodescanner/BarcodeView$b;

    .line 2
    .line 3
    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->B:Lcom/journeyapps/barcodescanner/BarcodeView$b;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->C:Lxa/a;

    .line 7
    .line 8
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->M()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public getDecoderFactory()Lxa/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->E:Lxa/g;

    .line 2
    .line 3
    return-object v0
.end method

.method public setDecoderFactory(Lxa/g;)V
    .locals 1

    .line 1
    invoke-static {}, Lxa/r;->a()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->E:Lxa/g;

    .line 5
    .line 6
    iget-object p1, p0, Lcom/journeyapps/barcodescanner/BarcodeView;->D:Lxa/i;

    .line 7
    .line 8
    if-eqz p1, :cond_0

    .line 9
    .line 10
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->G()Lxa/f;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p1, v0}, Lxa/i;->j(Lxa/f;)V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method

.method public u()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->M()V

    .line 2
    .line 3
    .line 4
    invoke-super {p0}, Lcom/journeyapps/barcodescanner/a;->u()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method protected x()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/journeyapps/barcodescanner/a;->x()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/journeyapps/barcodescanner/BarcodeView;->L()V

    .line 5
    .line 6
    .line 7
    return-void
.end method
