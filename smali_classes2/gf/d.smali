.class public Lgf/d;
.super Ljava/io/OutputStream;
.source "SourceFile"


# static fields
.field private static final f:Lff/d;


# instance fields
.field private final a:I

.field private final b:Lff/c;

.field private final c:Lff/d;

.field private d:J

.field private e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lgf/c;

    .line 2
    .line 3
    invoke-direct {v0}, Lgf/c;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lgf/d;->f:Lff/d;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(ILff/c;Lff/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    if-gez p1, :cond_0

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    :cond_0
    iput p1, p0, Lgf/d;->a:I

    .line 8
    .line 9
    if-nez p2, :cond_1

    .line 10
    .line 11
    invoke-static {}, Lff/c;->a()Lff/c;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    :cond_1
    iput-object p2, p0, Lgf/d;->b:Lff/c;

    .line 16
    .line 17
    if-nez p3, :cond_2

    .line 18
    .line 19
    sget-object p3, Lgf/d;->f:Lff/d;

    .line 20
    .line 21
    :cond_2
    iput-object p3, p0, Lgf/d;->c:Lff/d;

    .line 22
    .line 23
    return-void
.end method

.method public static synthetic a(Lgf/d;)Ljava/io/OutputStream;
    .locals 0

    .line 1
    invoke-static {p0}, Lgf/d;->f(Lgf/d;)Ljava/io/OutputStream;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic f(Lgf/d;)Ljava/io/OutputStream;
    .locals 0

    .line 1
    sget-object p0, Lgf/b;->a:Lgf/b;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method protected b(I)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lgf/d;->e:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-wide v0, p0, Lgf/d;->d:J

    .line 6
    .line 7
    int-to-long v2, p1

    .line 8
    add-long/2addr v0, v2

    .line 9
    iget p1, p0, Lgf/d;->a:I

    .line 10
    .line 11
    int-to-long v2, p1

    .line 12
    cmp-long p1, v0, v2

    .line 13
    .line 14
    if-lez p1, :cond_0

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lgf/d;->e:Z

    .line 18
    .line 19
    invoke-virtual {p0}, Lgf/d;->g()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method protected c()Ljava/io/OutputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lgf/d;->c:Lff/d;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Lff/d;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/io/OutputStream;

    .line 8
    .line 9
    return-object v0
.end method

.method public close()V
    .locals 1

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lgf/d;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    .line 3
    .line 4
    :catch_0
    invoke-virtual {p0}, Lgf/d;->e()Ljava/io/OutputStream;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method protected e()Ljava/io/OutputStream;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lgf/d;->c()Ljava/io/OutputStream;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public flush()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lgf/d;->e()Ljava/io/OutputStream;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method protected g()V
    .locals 1

    .line 1
    iget-object v0, p0, Lgf/d;->b:Lff/c;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Lff/c;->accept(Ljava/lang/Object;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public write(I)V
    .locals 4

    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, v0}, Lgf/d;->b(I)V

    .line 8
    invoke-virtual {p0}, Lgf/d;->e()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    .line 9
    iget-wide v0, p0, Lgf/d;->d:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lgf/d;->d:J

    return-void
.end method

.method public write([B)V
    .locals 4

    .line 1
    array-length v0, p1

    invoke-virtual {p0, v0}, Lgf/d;->b(I)V

    .line 2
    invoke-virtual {p0}, Lgf/d;->e()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 3
    iget-wide v0, p0, Lgf/d;->d:J

    array-length p1, p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lgf/d;->d:J

    return-void
.end method

.method public write([BII)V
    .locals 2

    .line 4
    invoke-virtual {p0, p3}, Lgf/d;->b(I)V

    .line 5
    invoke-virtual {p0}, Lgf/d;->e()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 6
    iget-wide p1, p0, Lgf/d;->d:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lgf/d;->d:J

    return-void
.end method
