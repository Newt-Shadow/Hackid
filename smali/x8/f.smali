.class public final Lx8/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw8/b;


# instance fields
.field private final a:Lwc/a;

.field private final b:Lwc/a;


# direct methods
.method public constructor <init>(Lwc/a;Lwc/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lx8/f;->a:Lwc/a;

    .line 5
    .line 6
    iput-object p2, p0, Lx8/f;->b:Lwc/a;

    .line 7
    .line 8
    return-void
.end method

.method public static a(Lwc/a;Lwc/a;)Lx8/f;
    .locals 1

    .line 1
    new-instance v0, Lx8/f;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lx8/f;-><init>(Lwc/a;Lwc/a;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static c(Lu8/b;Lad/i;)Lx8/e;
    .locals 1

    .line 1
    new-instance v0, Lx8/e;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lx8/e;-><init>(Lu8/b;Lad/i;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public b()Lx8/e;
    .locals 2

    .line 1
    iget-object v0, p0, Lx8/f;->a:Lwc/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lwc/a;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lu8/b;

    .line 8
    .line 9
    iget-object v1, p0, Lx8/f;->b:Lwc/a;

    .line 10
    .line 11
    invoke-interface {v1}, Lwc/a;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lad/i;

    .line 16
    .line 17
    invoke-static {v0, v1}, Lx8/f;->c(Lu8/b;Lad/i;)Lx8/e;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lx8/f;->b()Lx8/e;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
