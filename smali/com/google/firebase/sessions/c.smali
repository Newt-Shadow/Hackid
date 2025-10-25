.class public final Lcom/google/firebase/sessions/c;
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
    iput-object p1, p0, Lcom/google/firebase/sessions/c;->a:Lwc/a;

    .line 5
    .line 6
    return-void
.end method

.method public static a(Lh7/f;)Lu8/b;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/firebase/sessions/b$b;->a:Lcom/google/firebase/sessions/b$b$a;

    .line 2
    .line 3
    invoke-virtual {v0, p0}, Lcom/google/firebase/sessions/b$b$a;->e(Lh7/f;)Lu8/b;

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
    check-cast p0, Lu8/b;

    .line 12
    .line 13
    return-object p0
.end method

.method public static b(Lwc/a;)Lcom/google/firebase/sessions/c;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/firebase/sessions/c;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/google/firebase/sessions/c;-><init>(Lwc/a;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public c()Lu8/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/firebase/sessions/c;->a:Lwc/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lwc/a;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lh7/f;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/google/firebase/sessions/c;->a(Lh7/f;)Lu8/b;

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
    invoke-virtual {p0}, Lcom/google/firebase/sessions/c;->c()Lu8/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
