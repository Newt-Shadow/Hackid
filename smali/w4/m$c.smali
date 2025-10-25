.class final Lw4/m$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw4/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation


# instance fields
.field private final a:Z

.field private final b:Z


# direct methods
.method public constructor <init>(Lb3/x1;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iget p1, p1, Lb3/x1;->d:I

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    and-int/2addr p1, v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v0, v1

    .line 13
    :goto_0
    iput-boolean v0, p0, Lw4/m$c;->a:Z

    .line 14
    .line 15
    invoke-static {p2, v1}, Lw4/m;->I(IZ)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iput-boolean p1, p0, Lw4/m$c;->b:Z

    .line 20
    .line 21
    return-void
.end method


# virtual methods
.method public a(Lw4/m$c;)I
    .locals 3

    .line 1
    invoke-static {}, Lo6/k;->j()Lo6/k;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-boolean v1, p0, Lw4/m$c;->b:Z

    .line 6
    .line 7
    iget-boolean v2, p1, Lw4/m$c;->b:Z

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lo6/k;->g(ZZ)Lo6/k;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-boolean v1, p0, Lw4/m$c;->a:Z

    .line 14
    .line 15
    iget-boolean p1, p1, Lw4/m$c;->a:Z

    .line 16
    .line 17
    invoke-virtual {v0, v1, p1}, Lo6/k;->g(ZZ)Lo6/k;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lo6/k;->i()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lw4/m$c;

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lw4/m$c;->a(Lw4/m$c;)I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    return p1
.end method
