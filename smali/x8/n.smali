.class public final Lx8/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw8/b;


# instance fields
.field private final a:Lwc/a;

.field private final b:Lwc/a;

.field private final c:Lwc/a;


# direct methods
.method public constructor <init>(Lwc/a;Lwc/a;Lwc/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lx8/n;->a:Lwc/a;

    .line 5
    .line 6
    iput-object p2, p0, Lx8/n;->b:Lwc/a;

    .line 7
    .line 8
    iput-object p3, p0, Lx8/n;->c:Lwc/a;

    .line 9
    .line 10
    return-void
.end method

.method public static a(Lwc/a;Lwc/a;Lwc/a;)Lx8/n;
    .locals 1

    .line 1
    new-instance v0, Lx8/n;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lx8/n;-><init>(Lwc/a;Lwc/a;Lwc/a;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static c(Lad/i;Lu8/w0;Lj0/i;)Lx8/m;
    .locals 1

    .line 1
    new-instance v0, Lx8/m;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2}, Lx8/m;-><init>(Lad/i;Lu8/w0;Lj0/i;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public b()Lx8/m;
    .locals 3

    .line 1
    iget-object v0, p0, Lx8/n;->a:Lwc/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lwc/a;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lad/i;

    .line 8
    .line 9
    iget-object v1, p0, Lx8/n;->b:Lwc/a;

    .line 10
    .line 11
    invoke-interface {v1}, Lwc/a;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lu8/w0;

    .line 16
    .line 17
    iget-object v2, p0, Lx8/n;->c:Lwc/a;

    .line 18
    .line 19
    invoke-interface {v2}, Lwc/a;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lj0/i;

    .line 24
    .line 25
    invoke-static {v0, v1, v2}, Lx8/n;->c(Lad/i;Lu8/w0;Lj0/i;)Lx8/m;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lx8/n;->b()Lx8/m;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
