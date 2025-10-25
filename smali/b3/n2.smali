.class public final synthetic Lb3/n2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lb3/o2;

.field public final synthetic b:Lo6/q$a;

.field public final synthetic c:Ld4/t$b;


# direct methods
.method public synthetic constructor <init>(Lb3/o2;Lo6/q$a;Ld4/t$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb3/n2;->a:Lb3/o2;

    iput-object p2, p0, Lb3/n2;->b:Lo6/q$a;

    iput-object p3, p0, Lb3/n2;->c:Ld4/t$b;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lb3/n2;->a:Lb3/o2;

    iget-object v1, p0, Lb3/n2;->b:Lo6/q$a;

    iget-object v2, p0, Lb3/n2;->c:Ld4/t$b;

    invoke-static {v0, v1, v2}, Lb3/o2;->a(Lb3/o2;Lo6/q$a;Ld4/t$b;)V

    return-void
.end method
