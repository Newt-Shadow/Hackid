.class public Lcom/arthenica/smartexception/java/JavaPackageLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/arthenica/smartexception/PackageLoader;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPackage(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/Package;
    .locals 0

    .line 1
    invoke-static {p2}, Lcom/arthenica/smartexception/AbstractExceptions;->packageName(Ljava/lang/String;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-static {p1}, Ljava/lang/Package;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method
