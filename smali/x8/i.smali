.class public final Lx8/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj0/e0;


# static fields
.field public static final a:Lx8/i;

.field private static final b:Lx8/h;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lx8/i;

    .line 2
    .line 3
    invoke-direct {v0}, Lx8/i;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lx8/i;->a:Lx8/i;

    .line 7
    .line 8
    new-instance v0, Lx8/h;

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x0

    .line 13
    const/4 v5, 0x0

    .line 14
    const/4 v6, 0x0

    .line 15
    move-object v1, v0

    .line 16
    invoke-direct/range {v1 .. v6}, Lx8/h;-><init>(Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Long;)V

    .line 17
    .line 18
    .line 19
    sput-object v0, Lx8/i;->b:Lx8/h;

    .line 20
    .line 21
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lx8/i;->d()Lx8/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public bridge synthetic b(Ljava/lang/Object;Ljava/io/OutputStream;Lad/e;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lx8/h;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lx8/i;->e(Lx8/h;Ljava/io/OutputStream;Lad/e;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    return-object p1
.end method

.method public c(Ljava/io/InputStream;Lad/e;)Ljava/lang/Object;
    .locals 1

    .line 1
    :try_start_0
    sget-object p2, Lje/b;->d:Lje/b$a;

    .line 2
    .line 3
    invoke-static {p1}, Lgd/a;->c(Ljava/io/InputStream;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-static {p1}, Lrd/n;->t([B)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p2}, Lje/b;->d()Lle/b;

    .line 12
    .line 13
    .line 14
    sget-object v0, Lx8/h;->Companion:Lx8/h$b;

    .line 15
    .line 16
    invoke-virtual {v0}, Lx8/h$b;->serializer()Lee/b;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p2, v0, p1}, Lje/b;->a(Lee/a;Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lx8/h;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    .line 26
    return-object p1

    .line 27
    :catch_0
    move-exception p1

    .line 28
    new-instance p2, Lj0/d;

    .line 29
    .line 30
    const-string v0, "Cannot parse session configs"

    .line 31
    .line 32
    invoke-direct {p2, v0, p1}, Lj0/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    throw p2
.end method

.method public d()Lx8/h;
    .locals 1

    .line 1
    sget-object v0, Lx8/i;->b:Lx8/h;

    .line 2
    .line 3
    return-object v0
.end method

.method public e(Lx8/h;Ljava/io/OutputStream;Lad/e;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object p3, Lje/b;->d:Lje/b$a;

    .line 2
    .line 3
    sget-object v0, Lx8/h;->Companion:Lx8/h$b;

    .line 4
    .line 5
    invoke-virtual {v0}, Lx8/h$b;->serializer()Lee/b;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {p3, v0, p1}, Lje/b;->b(Lee/e;Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-static {p1}, Lrd/n;->u(Ljava/lang/String;)[B

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-virtual {p2, p1}, Ljava/io/OutputStream;->write([B)V

    .line 18
    .line 19
    .line 20
    sget-object p1, Lxc/t;->a:Lxc/t;

    .line 21
    .line 22
    return-object p1
.end method
