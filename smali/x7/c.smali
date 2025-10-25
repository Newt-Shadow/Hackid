.class public final synthetic Lx7/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln2/k;


# instance fields
.field public final synthetic a:Lx7/e;

.field public final synthetic b:Lm6/l;

.field public final synthetic c:Z

.field public final synthetic d:Lq7/g0;


# direct methods
.method public synthetic constructor <init>(Lx7/e;Lm6/l;ZLq7/g0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lx7/c;->a:Lx7/e;

    iput-object p2, p0, Lx7/c;->b:Lm6/l;

    iput-boolean p3, p0, Lx7/c;->c:Z

    iput-object p4, p0, Lx7/c;->d:Lq7/g0;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Exception;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lx7/c;->a:Lx7/e;

    iget-object v1, p0, Lx7/c;->b:Lm6/l;

    iget-boolean v2, p0, Lx7/c;->c:Z

    iget-object v3, p0, Lx7/c;->d:Lq7/g0;

    invoke-static {v0, v1, v2, v3, p1}, Lx7/e;->a(Lx7/e;Lm6/l;ZLq7/g0;Ljava/lang/Exception;)V

    return-void
.end method
