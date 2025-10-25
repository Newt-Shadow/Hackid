.class public final synthetic Lj4/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lj4/c$c;

.field public final synthetic b:Landroid/net/Uri;


# direct methods
.method public synthetic constructor <init>(Lj4/c$c;Landroid/net/Uri;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj4/d;->a:Lj4/c$c;

    iput-object p2, p0, Lj4/d;->b:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lj4/d;->a:Lj4/c$c;

    iget-object v1, p0, Lj4/d;->b:Landroid/net/Uri;

    invoke-static {v0, v1}, Lj4/c$c;->a(Lj4/c$c;Landroid/net/Uri;)V

    return-void
.end method
