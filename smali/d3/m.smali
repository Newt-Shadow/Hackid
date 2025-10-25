.class public final synthetic Ld3/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ld3/v$a;

.field public final synthetic b:Lb3/x1;

.field public final synthetic c:Le3/i;


# direct methods
.method public synthetic constructor <init>(Ld3/v$a;Lb3/x1;Le3/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld3/m;->a:Ld3/v$a;

    iput-object p2, p0, Ld3/m;->b:Lb3/x1;

    iput-object p3, p0, Ld3/m;->c:Le3/i;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Ld3/m;->a:Ld3/v$a;

    iget-object v1, p0, Ld3/m;->b:Lb3/x1;

    iget-object v2, p0, Ld3/m;->c:Le3/i;

    invoke-static {v0, v1, v2}, Ld3/v$a;->e(Ld3/v$a;Lb3/x1;Le3/i;)V

    return-void
.end method
