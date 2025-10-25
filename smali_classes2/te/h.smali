.class public final Lte/h;
.super Lne/b0;
.source "SourceFile"


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:J

.field private final e:Laf/f;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLaf/f;)V
    .locals 1

    .line 1
    const-string v0, "source"

    .line 2
    .line 3
    invoke-static {p4, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Lne/b0;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lte/h;->c:Ljava/lang/String;

    .line 10
    .line 11
    iput-wide p2, p0, Lte/h;->d:J

    .line 12
    .line 13
    iput-object p4, p0, Lte/h;->e:Laf/f;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public c()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lte/h;->d:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public e()Lne/v;
    .locals 2

    .line 1
    iget-object v0, p0, Lte/h;->c:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    sget-object v1, Lne/v;->e:Lne/v$a;

    .line 8
    .line 9
    invoke-virtual {v1, v0}, Lne/v$a;->b(Ljava/lang/String;)Lne/v;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :goto_0
    return-object v0
.end method

.method public f()Laf/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lte/h;->e:Laf/f;

    .line 2
    .line 3
    return-object v0
.end method
