.class public final Lw2/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr2/b;


# instance fields
.field private final a:Lwc/a;

.field private final b:Lwc/a;

.field private final c:Lwc/a;

.field private final d:Lwc/a;


# direct methods
.method public constructor <init>(Lwc/a;Lwc/a;Lwc/a;Lwc/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lw2/w;->a:Lwc/a;

    .line 5
    .line 6
    iput-object p2, p0, Lw2/w;->b:Lwc/a;

    .line 7
    .line 8
    iput-object p3, p0, Lw2/w;->c:Lwc/a;

    .line 9
    .line 10
    iput-object p4, p0, Lw2/w;->d:Lwc/a;

    .line 11
    .line 12
    return-void
.end method

.method public static a(Lwc/a;Lwc/a;Lwc/a;Lwc/a;)Lw2/w;
    .locals 1

    .line 1
    new-instance v0, Lw2/w;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lw2/w;-><init>(Lwc/a;Lwc/a;Lwc/a;Lwc/a;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static c(Ljava/util/concurrent/Executor;Lx2/d;Lw2/x;Ly2/b;)Lw2/v;
    .locals 1

    .line 1
    new-instance v0, Lw2/v;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1, p2, p3}, Lw2/v;-><init>(Ljava/util/concurrent/Executor;Lx2/d;Lw2/x;Ly2/b;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public b()Lw2/v;
    .locals 4

    .line 1
    iget-object v0, p0, Lw2/w;->a:Lwc/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lwc/a;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/concurrent/Executor;

    .line 8
    .line 9
    iget-object v1, p0, Lw2/w;->b:Lwc/a;

    .line 10
    .line 11
    invoke-interface {v1}, Lwc/a;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    check-cast v1, Lx2/d;

    .line 16
    .line 17
    iget-object v2, p0, Lw2/w;->c:Lwc/a;

    .line 18
    .line 19
    invoke-interface {v2}, Lwc/a;->get()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Lw2/x;

    .line 24
    .line 25
    iget-object v3, p0, Lw2/w;->d:Lwc/a;

    .line 26
    .line 27
    invoke-interface {v3}, Lwc/a;->get()Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    check-cast v3, Ly2/b;

    .line 32
    .line 33
    invoke-static {v0, v1, v2, v3}, Lw2/w;->c(Ljava/util/concurrent/Executor;Lx2/d;Lw2/x;Ly2/b;)Lw2/v;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lw2/w;->b()Lw2/v;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
