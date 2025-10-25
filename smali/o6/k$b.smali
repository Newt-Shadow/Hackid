.class final Lo6/k$b;
.super Lo6/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo6/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field final d:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lo6/k;-><init>(Lo6/k$a;)V

    .line 3
    .line 4
    .line 5
    iput p1, p0, Lo6/k$b;->d:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public d(II)Lo6/k;
    .locals 0

    .line 1
    return-object p0
.end method

.method public e(JJ)Lo6/k;
    .locals 0

    .line 1
    return-object p0
.end method

.method public f(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Comparator;)Lo6/k;
    .locals 0

    .line 1
    return-object p0
.end method

.method public g(ZZ)Lo6/k;
    .locals 0

    .line 1
    return-object p0
.end method

.method public h(ZZ)Lo6/k;
    .locals 0

    .line 1
    return-object p0
.end method

.method public i()I
    .locals 1

    .line 1
    iget v0, p0, Lo6/k$b;->d:I

    .line 2
    .line 3
    return v0
.end method
