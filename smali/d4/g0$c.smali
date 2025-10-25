.class final Ld4/g0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld4/m0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld4/g0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "c"
.end annotation


# instance fields
.field private final a:I

.field final synthetic b:Ld4/g0;


# direct methods
.method public constructor <init>(Ld4/g0;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Ld4/g0$c;->b:Ld4/g0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Ld4/g0$c;->a:I

    .line 7
    .line 8
    return-void
.end method

.method static synthetic b(Ld4/g0$c;)I
    .locals 0

    .line 1
    iget p0, p0, Ld4/g0$c;->a:I

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Ld4/g0$c;->b:Ld4/g0;

    .line 2
    .line 3
    iget v1, p0, Ld4/g0$c;->a:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ld4/g0;->X(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public isReady()Z
    .locals 2

    .line 1
    iget-object v0, p0, Ld4/g0$c;->b:Ld4/g0;

    .line 2
    .line 3
    iget v1, p0, Ld4/g0$c;->a:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ld4/g0;->P(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public j(J)I
    .locals 2

    .line 1
    iget-object v0, p0, Ld4/g0$c;->b:Ld4/g0;

    .line 2
    .line 3
    iget v1, p0, Ld4/g0$c;->a:I

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1, p2}, Ld4/g0;->h0(IJ)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method

.method public l(Lb3/y1;Le3/g;I)I
    .locals 2

    .line 1
    iget-object v0, p0, Ld4/g0$c;->b:Ld4/g0;

    .line 2
    .line 3
    iget v1, p0, Ld4/g0$c;->a:I

    .line 4
    .line 5
    invoke-virtual {v0, v1, p1, p2, p3}, Ld4/g0;->d0(ILb3/y1;Le3/g;I)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method
