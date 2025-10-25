.class final synthetic Lg6/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm5/q;


# instance fields
.field private final a:Lg6/b;

.field private final b:Lg6/l;

.field private final c:Lg6/LocationCallback;

.field private final d:Lg6/j;

.field private final e:Ld6/p;

.field private final f:Lm5/j;


# direct methods
.method constructor <init>(Lg6/b;Lg6/l;Lg6/LocationCallback;Lg6/j;Ld6/p;Lm5/j;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lg6/f;->a:Lg6/b;

    iput-object p2, p0, Lg6/f;->b:Lg6/l;

    iput-object p3, p0, Lg6/f;->c:Lg6/LocationCallback;

    iput-object p4, p0, Lg6/f;->d:Lg6/j;

    iput-object p5, p0, Lg6/f;->e:Ld6/p;

    iput-object p6, p0, Lg6/f;->f:Lm5/j;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lg6/f;->a:Lg6/b;

    iget-object v1, p0, Lg6/f;->b:Lg6/l;

    iget-object v2, p0, Lg6/f;->c:Lg6/LocationCallback;

    iget-object v3, p0, Lg6/f;->d:Lg6/j;

    iget-object v4, p0, Lg6/f;->e:Ld6/p;

    iget-object v5, p0, Lg6/f;->f:Lm5/j;

    move-object v6, p1

    check-cast v6, Ld6/n;

    move-object v7, p2

    check-cast v7, Lm6/l;

    invoke-virtual/range {v0 .. v7}, Lg6/b;->C(Lg6/l;Lg6/LocationCallback;Lg6/j;Ld6/p;Lm5/j;Ld6/n;Lm6/l;)V

    return-void
.end method
