.class public final synthetic Lcb/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcb/c;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcb/c;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcb/b;->a:Lcb/c;

    iput-boolean p2, p0, Lcb/b;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcb/b;->a:Lcb/c;

    iget-boolean v1, p0, Lcb/b;->b:Z

    invoke-static {v0, v1}, Lcb/c;->a(Lcb/c;Z)V

    return-void
.end method
