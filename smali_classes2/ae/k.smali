.class final Lae/k;
.super Ltd/i0;
.source "SourceFile"


# static fields
.field public static final c:Lae/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lae/k;

    invoke-direct {v0}, Lae/k;-><init>()V

    sput-object v0, Lae/k;->c:Lae/k;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ltd/i0;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public A0(ILjava/lang/String;)Ltd/i0;
    .locals 1

    .line 1
    invoke-static {p1}, Lyd/n;->a(I)V

    .line 2
    .line 3
    .line 4
    sget v0, Lae/j;->d:I

    .line 5
    .line 6
    if-lt p1, v0, :cond_0

    .line 7
    .line 8
    invoke-static {p0, p2}, Lyd/n;->b(Ltd/i0;Ljava/lang/String;)Ltd/i0;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    return-object p1

    .line 13
    :cond_0
    invoke-super {p0, p1, p2}, Ltd/i0;->A0(ILjava/lang/String;)Ltd/i0;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    return-object p1
.end method

.method public q0(Lad/i;Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    sget-object p1, Lae/c;->i:Lae/c;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, p2, v0, v1}, Lae/f;->T0(Ljava/lang/Runnable;ZZ)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "Dispatchers.IO"

    return-object v0
.end method
