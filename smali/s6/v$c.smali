.class public final Ls6/v$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls6/v;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/lang/Object;

.field private final c:[B

.field private final d:Le7/z;

.field private final e:Le7/i0;

.field private final f:I

.field private final g:Ljava/lang/String;

.field private final h:Ls6/g;


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;[BLe7/z;Le7/i0;ILjava/lang/String;Ls6/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ls6/v$c;->a:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Ls6/v$c;->b:Ljava/lang/Object;

    .line 7
    .line 8
    array-length p1, p3

    .line 9
    invoke-static {p3, p1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Ls6/v$c;->c:[B

    .line 14
    .line 15
    iput-object p4, p0, Ls6/v$c;->d:Le7/z;

    .line 16
    .line 17
    iput-object p5, p0, Ls6/v$c;->e:Le7/i0;

    .line 18
    .line 19
    iput p6, p0, Ls6/v$c;->f:I

    .line 20
    .line 21
    iput-object p7, p0, Ls6/v$c;->g:Ljava/lang/String;

    .line 22
    .line 23
    iput-object p8, p0, Ls6/v$c;->h:Ls6/g;

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ls6/v$c;->a:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()[B
    .locals 2

    .line 1
    iget-object v0, p0, Ls6/v$c;->c:[B

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return-object v0

    .line 7
    :cond_0
    array-length v1, v0

    .line 8
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    return-object v0
.end method

.method public c()Ls6/g;
    .locals 1

    .line 1
    iget-object v0, p0, Ls6/v$c;->h:Ls6/g;

    .line 2
    .line 3
    return-object v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Ls6/v$c;->f:I

    .line 2
    .line 3
    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ls6/v$c;->g:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public f()Le7/i0;
    .locals 1

    .line 1
    iget-object v0, p0, Ls6/v$c;->e:Le7/i0;

    .line 2
    .line 3
    return-object v0
.end method

.method public g()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ls6/v$c;->b:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public h()Le7/z;
    .locals 1

    .line 1
    iget-object v0, p0, Ls6/v$c;->d:Le7/z;

    .line 2
    .line 3
    return-object v0
.end method
