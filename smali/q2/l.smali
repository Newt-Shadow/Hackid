.class public final Lq2/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lr2/b;


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
    iput-object p1, p0, Lq2/l;->a:Lwc/a;

    .line 5
    .line 6
    iput-object p2, p0, Lq2/l;->b:Lwc/a;

    .line 7
    .line 8
    return-void
.end method

.method public static a(Lwc/a;Lwc/a;)Lq2/l;
    .locals 1

    .line 1
    new-instance v0, Lq2/l;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lq2/l;-><init>(Lwc/a;Lwc/a;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static c(Landroid/content/Context;Ljava/lang/Object;)Lq2/k;
    .locals 1

    .line 1
    new-instance v0, Lq2/k;

    .line 2
    .line 3
    check-cast p1, Lq2/i;

    .line 4
    .line 5
    invoke-direct {v0, p0, p1}, Lq2/k;-><init>(Landroid/content/Context;Lq2/i;)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method


# virtual methods
.method public b()Lq2/k;
    .locals 2

    .line 1
    iget-object v0, p0, Lq2/l;->a:Lwc/a;

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
    iget-object v1, p0, Lq2/l;->b:Lwc/a;

    .line 10
    .line 11
    invoke-interface {v1}, Lwc/a;->get()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v0, v1}, Lq2/l;->c(Landroid/content/Context;Ljava/lang/Object;)Lq2/k;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lq2/l;->b()Lq2/k;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
