.class public final Lx8/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw8/b;


# instance fields
.field private final a:Lwc/a;


# direct methods
.method public constructor <init>(Lwc/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lx8/c;->a:Lwc/a;

    .line 5
    .line 6
    return-void
.end method

.method public static a(Lwc/a;)Lx8/c;
    .locals 1

    .line 1
    new-instance v0, Lx8/c;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lx8/c;-><init>(Lwc/a;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static c(Landroid/content/Context;)Lx8/b;
    .locals 1

    .line 1
    new-instance v0, Lx8/b;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lx8/b;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public b()Lx8/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lx8/c;->a:Lwc/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lwc/a;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/content/Context;

    .line 8
    .line 9
    invoke-static {v0}, Lx8/c;->c(Landroid/content/Context;)Lx8/b;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lx8/c;->b()Lx8/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
