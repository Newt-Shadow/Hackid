.class public final Lu8/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj0/e0;


# instance fields
.field private final a:Lu8/n0;


# direct methods
.method public constructor <init>(Lu8/n0;)V
    .locals 1

    .line 1
    const-string v0, "sessionGenerator"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lu8/f0;->a:Lu8/n0;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public bridge synthetic a()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lu8/f0;->d()Lu8/e0;

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
    check-cast p1, Lu8/e0;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lu8/f0;->e(Lu8/e0;Ljava/io/OutputStream;Lad/e;)Ljava/lang/Object;

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
    sget-object v0, Lu8/e0;->Companion:Lu8/e0$b;

    .line 15
    .line 16
    invoke-virtual {v0}, Lu8/e0$b;->serializer()Lee/b;

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
    check-cast p1, Lu8/e0;
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
    const-string v0, "Cannot parse session data"

    .line 31
    .line 32
    invoke-direct {p2, v0, p1}, Lj0/d;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    throw p2
.end method

.method public d()Lu8/e0;
    .locals 7

    .line 1
    new-instance v6, Lu8/e0;

    .line 2
    .line 3
    iget-object v0, p0, Lu8/f0;->a:Lu8/n0;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lu8/n0;->a(Lu8/h0;)Lu8/h0;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    const/4 v3, 0x0

    .line 12
    const/4 v4, 0x6

    .line 13
    const/4 v5, 0x0

    .line 14
    move-object v0, v6

    .line 15
    invoke-direct/range {v0 .. v5}, Lu8/e0;-><init>(Lu8/h0;Lu8/v0;Ljava/util/Map;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 16
    .line 17
    .line 18
    return-object v6
.end method

.method public e(Lu8/e0;Ljava/io/OutputStream;Lad/e;)Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object p3, Lje/b;->d:Lje/b$a;

    .line 2
    .line 3
    sget-object v0, Lu8/e0;->Companion:Lu8/e0$b;

    .line 4
    .line 5
    invoke-virtual {v0}, Lu8/e0$b;->serializer()Lee/b;

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
