.class public final Lcom/google/firebase/sessions/d;
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
    iput-object p1, p0, Lcom/google/firebase/sessions/d;->a:Lwc/a;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/google/firebase/sessions/d;->b:Lwc/a;

    .line 7
    .line 8
    return-void
.end method

.method public static a(Lwc/a;Lwc/a;)Lcom/google/firebase/sessions/d;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/firebase/sessions/d;

    .line 2
    .line 3
    invoke-direct {v0, p0, p1}, Lcom/google/firebase/sessions/d;-><init>(Lwc/a;Lwc/a;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public static c(Landroid/content/Context;Lad/i;)Lj0/i;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/sessions/b$b;->a:Lcom/google/firebase/sessions/b$b$a;

    .line 2
    .line 3
    invoke-virtual {v0, p0, p1}, Lcom/google/firebase/sessions/b$b$a;->i(Landroid/content/Context;Lad/i;)Lj0/i;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-static {p0}, Lw8/d;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lj0/i;

    .line 12
    .line 13
    return-object p0
.end method


# virtual methods
.method public b()Lj0/i;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/firebase/sessions/d;->a:Lwc/a;

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
    iget-object v1, p0, Lcom/google/firebase/sessions/d;->b:Lwc/a;

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
    invoke-static {v0, v1}, Lcom/google/firebase/sessions/d;->c(Landroid/content/Context;Lad/i;)Lj0/i;

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
    invoke-virtual {p0}, Lcom/google/firebase/sessions/d;->b()Lj0/i;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
