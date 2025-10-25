.class public final synthetic Ld4/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ld4/a0$a;

.field public final synthetic b:Ld4/a0;

.field public final synthetic c:Ld4/q;


# direct methods
.method public synthetic constructor <init>(Ld4/a0$a;Ld4/a0;Ld4/q;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld4/v;->a:Ld4/a0$a;

    iput-object p2, p0, Ld4/v;->b:Ld4/a0;

    iput-object p3, p0, Ld4/v;->c:Ld4/q;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Ld4/v;->a:Ld4/a0$a;

    iget-object v1, p0, Ld4/v;->b:Ld4/a0;

    iget-object v2, p0, Ld4/v;->c:Ld4/q;

    invoke-static {v0, v1, v2}, Ld4/a0$a;->d(Ld4/a0$a;Ld4/a0;Ld4/q;)V

    return-void
.end method
