.class final synthetic Lg6/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lg6/j;


# instance fields
.field private final a:Lg6/b;

.field private final b:Lg6/l;

.field private final c:Lg6/LocationCallback;

.field private final d:Lg6/j;


# direct methods
.method constructor <init>(Lg6/b;Lg6/l;Lg6/LocationCallback;Lg6/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg6/x;->a:Lg6/b;

    iput-object p2, p0, Lg6/x;->b:Lg6/l;

    iput-object p3, p0, Lg6/x;->c:Lg6/LocationCallback;

    iput-object p4, p0, Lg6/x;->d:Lg6/j;

    return-void
.end method


# virtual methods
.method public final zza()V
    .locals 5

    .line 1
    iget-object v0, p0, Lg6/x;->a:Lg6/b;

    .line 2
    .line 3
    iget-object v1, p0, Lg6/x;->b:Lg6/l;

    .line 4
    .line 5
    iget-object v2, p0, Lg6/x;->c:Lg6/LocationCallback;

    .line 6
    .line 7
    iget-object v3, p0, Lg6/x;->d:Lg6/j;

    .line 8
    .line 9
    const/4 v4, 0x0

    .line 10
    invoke-virtual {v1, v4}, Lg6/l;->c(Z)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v2}, Lg6/b;->A(Lg6/LocationCallback;)Lm6/Task;

    .line 14
    .line 15
    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    invoke-interface {v3}, Lg6/j;->zza()V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method
