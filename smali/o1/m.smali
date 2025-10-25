.class public Lo1/m;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:[Lo1/n;

.field private final b:Ljava/lang/String;

.field private final c:[B

.field private final d:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[Lo1/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lo1/m;->b:Ljava/lang/String;

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lo1/m;->c:[B

    .line 4
    iput-object p2, p0, Lo1/m;->a:[Lo1/n;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lo1/m;->d:I

    return-void
.end method

.method public constructor <init>([B[Lo1/n;)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    iput-object p1, p0, Lo1/m;->c:[B

    const/4 p1, 0x0

    .line 9
    iput-object p1, p0, Lo1/m;->b:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Lo1/m;->a:[Lo1/n;

    const/4 p1, 0x1

    .line 11
    iput p1, p0, Lo1/m;->d:I

    return-void
.end method

.method private a(I)V
    .locals 3

    .line 1
    iget v0, p0, Lo1/m;->d:I

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "Wrong data accessor type detected. "

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v2, p0, Lo1/m;->d:I

    .line 19
    .line 20
    invoke-direct {p0, v2}, Lo1/m;->f(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string v2, " expected, but got "

    .line 28
    .line 29
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, p1}, Lo1/m;->f(I)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    throw v0
.end method

.method private f(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const-string p1, "Unknown"

    return-object p1

    :cond_0
    const-string p1, "ArrayBuffer"

    return-object p1

    :cond_1
    const-string p1, "String"

    return-object p1
.end method


# virtual methods
.method public b()[B
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, v0}, Lo1/m;->a(I)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lo1/m;->c:[B

    .line 6
    .line 7
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lo1/m;->c:[B

    .line 11
    .line 12
    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lo1/m;->a(I)V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lo1/m;->b:Ljava/lang/String;

    .line 6
    .line 7
    return-object v0
.end method

.method public d()[Lo1/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lo1/m;->a:[Lo1/n;

    .line 2
    .line 3
    return-object v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lo1/m;->d:I

    .line 2
    .line 3
    return v0
.end method
