.class public final Ly4/l$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ly4/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/util/SparseBooleanArray;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseBooleanArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Ly4/l$b;->a:Landroid/util/SparseBooleanArray;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public a(I)Ly4/l$b;
    .locals 2

    .line 1
    iget-boolean v0, p0, Ly4/l$b;->b:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    xor-int/2addr v0, v1

    .line 5
    invoke-static {v0}, Ly4/a;->f(Z)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Ly4/l$b;->a:Landroid/util/SparseBooleanArray;

    .line 9
    .line 10
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->append(IZ)V

    .line 11
    .line 12
    .line 13
    return-object p0
.end method

.method public b(Ly4/l;)Ly4/l$b;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p1}, Ly4/l;->c()I

    .line 3
    .line 4
    .line 5
    move-result v1

    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ly4/l;->b(I)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-virtual {p0, v1}, Ly4/l$b;->a(I)Ly4/l$b;

    .line 13
    .line 14
    .line 15
    add-int/lit8 v0, v0, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    return-object p0
.end method

.method public varargs c([I)Ly4/l$b;
    .locals 3

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4
    .line 5
    aget v2, p1, v1

    .line 6
    .line 7
    invoke-virtual {p0, v2}, Ly4/l$b;->a(I)Ly4/l$b;

    .line 8
    .line 9
    .line 10
    add-int/lit8 v1, v1, 0x1

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    return-object p0
.end method

.method public d(IZ)Ly4/l$b;
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Ly4/l$b;->a(I)Ly4/l$b;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1

    .line 8
    :cond_0
    return-object p0
.end method

.method public e()Ly4/l;
    .locals 3

    .line 1
    iget-boolean v0, p0, Ly4/l$b;->b:Z

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    xor-int/2addr v0, v1

    .line 5
    invoke-static {v0}, Ly4/a;->f(Z)V

    .line 6
    .line 7
    .line 8
    iput-boolean v1, p0, Ly4/l$b;->b:Z

    .line 9
    .line 10
    new-instance v0, Ly4/l;

    .line 11
    .line 12
    iget-object v1, p0, Ly4/l$b;->a:Landroid/util/SparseBooleanArray;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-direct {v0, v1, v2}, Ly4/l;-><init>(Landroid/util/SparseBooleanArray;Ly4/l$a;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method
