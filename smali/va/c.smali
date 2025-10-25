.class public final synthetic Lva/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lva/e$a;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lva/e$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lva/c;->a:Lva/e$a;

    iput-object p2, p0, Lva/c;->b:Ljava/lang/String;

    iput-object p3, p0, Lva/c;->c:Ljava/lang/String;

    iput-object p4, p0, Lva/c;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lva/c;->a:Lva/e$a;

    iget-object v1, p0, Lva/c;->b:Ljava/lang/String;

    iget-object v2, p0, Lva/c;->c:Ljava/lang/String;

    iget-object v3, p0, Lva/c;->d:Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3}, Lva/e$a;->a(Lva/e$a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
