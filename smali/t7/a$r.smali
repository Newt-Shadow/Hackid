.class final Lt7/a$r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ld8/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt7/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "r"
.end annotation


# static fields
.field static final a:Lt7/a$r;

.field private static final b:Ld8/c;

.field private static final c:Ld8/c;

.field private static final d:Ld8/c;

.field private static final e:Ld8/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lt7/a$r;

    .line 2
    .line 3
    invoke-direct {v0}, Lt7/a$r;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lt7/a$r;->a:Lt7/a$r;

    .line 7
    .line 8
    const-string v0, "processName"

    .line 9
    .line 10
    invoke-static {v0}, Ld8/c;->d(Ljava/lang/String;)Ld8/c;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lt7/a$r;->b:Ld8/c;

    .line 15
    .line 16
    const-string v0, "pid"

    .line 17
    .line 18
    invoke-static {v0}, Ld8/c;->d(Ljava/lang/String;)Ld8/c;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lt7/a$r;->c:Ld8/c;

    .line 23
    .line 24
    const-string v0, "importance"

    .line 25
    .line 26
    invoke-static {v0}, Ld8/c;->d(Ljava/lang/String;)Ld8/c;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Lt7/a$r;->d:Ld8/c;

    .line 31
    .line 32
    const-string v0, "defaultProcess"

    .line 33
    .line 34
    invoke-static {v0}, Ld8/c;->d(Ljava/lang/String;)Ld8/c;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sput-object v0, Lt7/a$r;->e:Ld8/c;

    .line 39
    .line 40
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lt7/f0$e$d$a$c;

    .line 2
    .line 3
    check-cast p2, Ld8/e;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lt7/a$r;->b(Lt7/f0$e$d$a$c;Ld8/e;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public b(Lt7/f0$e$d$a$c;Ld8/e;)V
    .locals 2

    .line 1
    sget-object v0, Lt7/a$r;->b:Ld8/c;

    .line 2
    .line 3
    invoke-virtual {p1}, Lt7/f0$e$d$a$c;->d()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-interface {p2, v0, v1}, Ld8/e;->c(Ld8/c;Ljava/lang/Object;)Ld8/e;

    .line 8
    .line 9
    .line 10
    sget-object v0, Lt7/a$r;->c:Ld8/c;

    .line 11
    .line 12
    invoke-virtual {p1}, Lt7/f0$e$d$a$c;->c()I

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    invoke-interface {p2, v0, v1}, Ld8/e;->f(Ld8/c;I)Ld8/e;

    .line 17
    .line 18
    .line 19
    sget-object v0, Lt7/a$r;->d:Ld8/c;

    .line 20
    .line 21
    invoke-virtual {p1}, Lt7/f0$e$d$a$c;->b()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    invoke-interface {p2, v0, v1}, Ld8/e;->f(Ld8/c;I)Ld8/e;

    .line 26
    .line 27
    .line 28
    sget-object v0, Lt7/a$r;->e:Ld8/c;

    .line 29
    .line 30
    invoke-virtual {p1}, Lt7/f0$e$d$a$c;->e()Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    invoke-interface {p2, v0, p1}, Ld8/e;->a(Ld8/c;Z)Ld8/e;

    .line 35
    .line 36
    .line 37
    return-void
.end method
