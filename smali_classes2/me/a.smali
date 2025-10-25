.class public final Lme/a;
.super Lcom/journeyapps/barcodescanner/BarcodeView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lme/a$a;
    }
.end annotation


# static fields
.field public static final I:Lme/a$a;


# instance fields
.field private H:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lme/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lme/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lme/a;->I:Lme/a$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/journeyapps/barcodescanner/BarcodeView;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lme/a;->H:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final O(III)V
    .locals 0

    .line 1
    iput p3, p0, Lme/a;->H:I

    .line 2
    .line 3
    new-instance p3, Lxa/p;

    .line 4
    .line 5
    invoke-direct {p3, p1, p2}, Lxa/p;-><init>(II)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p3}, Lcom/journeyapps/barcodescanner/a;->setFramingRectSize(Lxa/p;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method protected k(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 3

    .line 1
    const-string v0, "container"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "surface"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Landroid/graphics/Rect;

    .line 12
    .line 13
    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p2}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 17
    .line 18
    .line 19
    invoke-super {p0, p1, p2}, Lcom/journeyapps/barcodescanner/a;->k(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget p2, p0, Lme/a;->H:I

    .line 24
    .line 25
    const/4 v1, -0x1

    .line 26
    if-eq p2, v1, :cond_0

    .line 27
    .line 28
    new-instance p2, Landroid/graphics/Rect;

    .line 29
    .line 30
    invoke-direct {p2, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 31
    .line 32
    .line 33
    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    .line 34
    .line 35
    iget v2, p0, Lme/a;->H:I

    .line 36
    .line 37
    sub-int/2addr v1, v2

    .line 38
    iput v1, p2, Landroid/graphics/Rect;->bottom:I

    .line 39
    .line 40
    iget v1, p2, Landroid/graphics/Rect;->top:I

    .line 41
    .line 42
    sub-int/2addr v1, v2

    .line 43
    iput v1, p2, Landroid/graphics/Rect;->top:I

    .line 44
    .line 45
    invoke-virtual {p2, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    return-object p2

    .line 52
    :cond_0
    invoke-static {p1}, Lkotlin/jvm/internal/m;->b(Ljava/lang/Object;)V

    .line 53
    .line 54
    .line 55
    return-object p1
.end method
