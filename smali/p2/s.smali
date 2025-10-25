.class final Lp2/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln2/i;


# instance fields
.field private final a:Lp2/p;

.field private final b:Ljava/lang/String;

.field private final c:Ln2/c;

.field private final d:Ln2/h;

.field private final e:Lp2/t;


# direct methods
.method constructor <init>(Lp2/p;Ljava/lang/String;Ln2/c;Ln2/h;Lp2/t;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lp2/s;->a:Lp2/p;

    .line 5
    .line 6
    iput-object p2, p0, Lp2/s;->b:Ljava/lang/String;

    .line 7
    .line 8
    iput-object p3, p0, Lp2/s;->c:Ln2/c;

    .line 9
    .line 10
    iput-object p4, p0, Lp2/s;->d:Ln2/h;

    .line 11
    .line 12
    iput-object p5, p0, Lp2/s;->e:Lp2/t;

    .line 13
    .line 14
    return-void
.end method

.method public static synthetic c(Ljava/lang/Exception;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lp2/s;->e(Ljava/lang/Exception;)V

    return-void
.end method

.method private static synthetic e(Ljava/lang/Exception;)V
    .locals 0

    .line 1
    return-void
.end method


# virtual methods
.method public a(Ln2/d;Ln2/k;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lp2/s;->e:Lp2/t;

    .line 2
    .line 3
    invoke-static {}, Lp2/o;->a()Lp2/o$a;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lp2/s;->a:Lp2/p;

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Lp2/o$a;->e(Lp2/p;)Lp2/o$a;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1, p1}, Lp2/o$a;->c(Ln2/d;)Lp2/o$a;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iget-object v1, p0, Lp2/s;->b:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p1, v1}, Lp2/o$a;->f(Ljava/lang/String;)Lp2/o$a;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iget-object v1, p0, Lp2/s;->d:Ln2/h;

    .line 24
    .line 25
    invoke-virtual {p1, v1}, Lp2/o$a;->d(Ln2/h;)Lp2/o$a;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iget-object v1, p0, Lp2/s;->c:Ln2/c;

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Lp2/o$a;->b(Ln2/c;)Lp2/o$a;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Lp2/o$a;->a()Lp2/o;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-interface {v0, p1, p2}, Lp2/t;->a(Lp2/o;Ln2/k;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public b(Ln2/d;)V
    .locals 1

    .line 1
    new-instance v0, Lp2/r;

    .line 2
    .line 3
    invoke-direct {v0}, Lp2/r;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, v0}, Lp2/s;->a(Ln2/d;Ln2/k;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method d()Lp2/p;
    .locals 1

    .line 1
    iget-object v0, p0, Lp2/s;->a:Lp2/p;

    .line 2
    .line 3
    return-object v0
.end method
