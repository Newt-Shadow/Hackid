package org.apache.tika.sax;

import io.flutter.plugins.firebase.crashlytics.Constants;
import io.sentry.s5;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.tika.sax.StandardReference;
/* loaded from: classes2.dex */
public class StandardsText {
    private static final String REGEX_APPLICABLE_DOCUMENTS = "(?i:.*APPLICABLE\\sDOCUMENTS|REFERENCE|STANDARD|REQUIREMENT|GUIDELINE|COMPLIANCE.*)";
    private static final String REGEX_FALLBACK = "\\(?(?<mainOrganization>[A-Z]\\w{1,64}+)\\)?((\\s?(?<separator>\\/)\\s?)(\\w{1,64}+\\s)*\\(?(?<secondOrganization>[A-Z]\\w{1,64}+)\\)?)?(\\s(?i:Publication|Standard))?(-|\\s)?(?<identifier>([0-9]{3,64}+|([A-Z]{1,64}+(-|_|\\.)?[0-9]{2,64}+))((-|_|\\.)?[A-Z0-9]{1,64}+){0,64}+)";
    private static final String REGEX_HEADER = "(\\d{1,10}+\\.(\\d{1,10}+\\.?){0,10}+)\\p{Blank}+([A-Z]{1,64}+(\\s[A-Z]{1,64}+){0,256}+){5,10}+";
    private static final String REGEX_IDENTIFIER = "(?<identifier>([0-9]{3,64}+|([A-Z]{1,64}+(-|_|\\.)?[0-9]{2,64}+))((-|_|\\.)?[A-Z0-9]{1,64}+){0,64}+)";
    private static final String REGEX_ORGANIZATION;
    private static final String REGEX_STANDARD;
    private static final String REGEX_STANDARD_TYPE = "(\\s(?i:Publication|Standard))";

    static {
        String organzationsRegex = StandardOrganizations.getOrganzationsRegex();
        REGEX_ORGANIZATION = organzationsRegex;
        REGEX_STANDARD = s5.DEFAULT_PROPAGATION_TARGETS + organzationsRegex + ".+" + organzationsRegex + "?.*";
    }

    public static ArrayList<StandardReference> extractStandardReferences(String str, double d10) {
        return findStandards(str, findHeaders(str), d10);
    }

    private static Map<Integer, String> findHeaders(String str) {
        TreeMap treeMap = new TreeMap();
        Matcher matcher = Pattern.compile(REGEX_HEADER).matcher(str);
        while (matcher.find()) {
            treeMap.put(Integer.valueOf(matcher.start()), matcher.group());
        }
        return treeMap;
    }

    private static ArrayList<StandardReference> findStandards(String str, Map<Integer, String> map, double d10) {
        String group;
        String group2;
        String group3;
        String group4;
        double d11;
        ArrayList<StandardReference> arrayList = new ArrayList<>();
        Matcher matcher = Pattern.compile(REGEX_FALLBACK).matcher(str);
        while (matcher.find()) {
            group = matcher.group("mainOrganization");
            group2 = matcher.group(Constants.IDENTIFIER);
            StandardReference.StandardReferenceBuilder standardReferenceBuilder = new StandardReference.StandardReferenceBuilder(group, group2);
            group3 = matcher.group("separator");
            group4 = matcher.group("secondOrganization");
            StandardReference.StandardReferenceBuilder secondOrganization = standardReferenceBuilder.setSecondOrganization(group3, group4);
            if (matcher.group().matches(REGEX_STANDARD)) {
                d11 = 0.5d;
            } else {
                d11 = 0.25d;
            }
            if (matcher.group().matches(".*(\\s(?i:Publication|Standard)).*")) {
                d11 += 0.25d;
            }
            Iterator<Map.Entry<Integer, String>> it = map.entrySet().iterator();
            boolean z10 = false;
            int i10 = 0;
            int i11 = 0;
            while (it.hasNext() && !z10) {
                int intValue = it.next().getKey().intValue();
                if (intValue > matcher.start()) {
                    z10 = true;
                }
                int i12 = i11;
                i11 = intValue;
                i10 = i12;
            }
            if (map.get(Integer.valueOf(i10)) != null && map.get(Integer.valueOf(i10)).matches(REGEX_APPLICABLE_DOCUMENTS)) {
                d11 += 0.25d;
            }
            secondOrganization.setScore(d11);
            if (d11 >= d10) {
                arrayList.add(secondOrganization.build());
            }
        }
        return arrayList;
    }
}
