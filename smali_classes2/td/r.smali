.class final Ltd/r;
.super Ltd/y1;
.source "SourceFile"


# instance fields
.field public final e:Ltd/n;


# direct methods
.method public constructor <init>(Ltd/n;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ltd/y1;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Ltd/r;->e:Ltd/n;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public u()Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    return v0
.end method

.method public v(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object p1, p0, Ltd/r;->e:Ltd/n;

    .line 2
    .line 3
    invoke-virtual {p0}, Ltd/y1;->t()Ltd/z1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {p1, v0}, Ltd/n;->v(Ltd/t1;)Ljava/lang/Throwable;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, Ltd/n;->M(Ljava/lang/Throwable;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
