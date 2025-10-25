.class final Lt7/a$l;
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
    name = "l"
.end annotation


# static fields
.field static final a:Lt7/a$l;

.field private static final b:Ld8/c;

.field private static final c:Ld8/c;

.field private static final d:Ld8/c;

.field private static final e:Ld8/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lt7/a$l;

    .line 2
    .line 3
    invoke-direct {v0}, Lt7/a$l;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lt7/a$l;->a:Lt7/a$l;

    .line 7
    .line 8
    const-string v0, "baseAddress"

    .line 9
    .line 10
    invoke-static {v0}, Ld8/c;->d(Ljava/lang/String;)Ld8/c;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    sput-object v0, Lt7/a$l;->b:Ld8/c;

    .line 15
    .line 16
    const-string v0, "size"

    .line 17
    .line 18
    invoke-static {v0}, Ld8/c;->d(Ljava/lang/String;)Ld8/c;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    sput-object v0, Lt7/a$l;->c:Ld8/c;

    .line 23
    .line 24
    const-string v0, "name"

    .line 25
    .line 26
    invoke-static {v0}, Ld8/c;->d(Ljava/lang/String;)Ld8/c;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    sput-object v0, Lt7/a$l;->d:Ld8/c;

    .line 31
    .line 32
    const-string v0, "uuid"

    .line 33
    .line 34
    invoke-static {v0}, Ld8/c;->d(Ljava/lang/String;)Ld8/c;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    sput-object v0, Lt7/a$l;->e:Ld8/c;

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
    check-cast p1, Lt7/f0$e$d$a$b$a;

    .line 2
    .line 3
    check-cast p2, Ld8/e;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lt7/a$l;->b(Lt7/f0$e$d$a$b$a;Ld8/e;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public b(Lt7/f0$e$d$a$b$a;Ld8/e;)V
    .locals 3

    .line 1
    sget-object v0, Lt7/a$l;->b:Ld8/c;

    .line 2
    .line 3
    invoke-virtual {p1}, Lt7/f0$e$d$a$b$a;->b()J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-interface {p2, v0, v1, v2}, Ld8/e;->b(Ld8/c;J)Ld8/e;

    .line 8
    .line 9
    .line 10
    sget-object v0, Lt7/a$l;->c:Ld8/c;

    .line 11
    .line 12
    invoke-virtual {p1}, Lt7/f0$e$d$a$b$a;->d()J

    .line 13
    .line 14
    .line 15
    move-result-wide v1

    .line 16
    invoke-interface {p2, v0, v1, v2}, Ld8/e;->b(Ld8/c;J)Ld8/e;

    .line 17
    .line 18
    .line 19
    sget-object v0, Lt7/a$l;->d:Ld8/c;

    .line 20
    .line 21
    invoke-virtual {p1}, Lt7/f0$e$d$a$b$a;->c()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-interface {p2, v0, v1}, Ld8/e;->c(Ld8/c;Ljava/lang/Object;)Ld8/e;

    .line 26
    .line 27
    .line 28
    sget-object v0, Lt7/a$l;->e:Ld8/c;

    .line 29
    .line 30
    invoke-virtual {p1}, Lt7/f0$e$d$a$b$a;->f()[B

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-interface {p2, v0, p1}, Ld8/e;->c(Ld8/c;Ljava/lang/Object;)Ld8/e;

    .line 35
    .line 36
    .line 37
    return-void
.end method
